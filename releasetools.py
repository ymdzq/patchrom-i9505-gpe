import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddLoki(info):
  info.script.script = [cmd for cmd in info.script.script if not "boot.img" in cmd]
  info.script.script = [cmd for cmd in info.script.script if not "show_progress(0.100000, 0);" in cmd]
  info.script.AppendExtra('package_extract_dir("system/kernel", "/tmp");')
  info.script.AppendExtra('package_extract_file("boot.img", "/tmp/boot.img");')
  info.script.AppendExtra('set_perm(0, 0, 0777, "/tmp/loki_bootloaders");')
  info.script.AppendExtra('set_perm(0, 0, 0777, "/tmp/flash_kernel.sh");')
  info.script.AppendExtra('set_perm(0, 0, 0777, "/tmp/loki_patch");')
  info.script.AppendExtra('set_perm(0, 0, 0777, "/tmp/loki_flash");')
  info.script.AppendExtra('run_program("/tmp/flash_kernel.sh");')
  #info.script.AppendExtra('delete_recursive("/system/kernel");')

def Replace_Key(input_zip, output_zip, script):
    data = input_zip.read("OTA/bin/busybox")
    common.ZipWriteStr(output_zip, "META-INF/com/miui/busybox", data)
    data = input_zip.read("OTA/bin/replace_key")
    common.ZipWriteStr(output_zip, "META-INF/com/miui/replace_key", data)
    script.AppendExtra("package_extract_file(\"META-INF/com/miui/busybox\", \"/tmp/busybox\");")
    script.AppendExtra("set_perm(0, 0, 0555, \"/tmp/busybox\");")
    script.AppendExtra("package_extract_file(\"META-INF/com/miui/replace_key\", \"/tmp/replace_key\");")
    script.AppendExtra("set_perm(0, 0, 0555, \"/tmp/replace_key\");")
    script.AppendExtra("run_program(\"/sbin/sh\", \"/tmp/replace_key\");")
    script.AppendExtra("delete(\"/tmp/busybox\");")
    script.AppendExtra("delete(\"/tmp/replace_key\");")

#def AddArgsForFormatSystem(info):
  #edify = info.script
  #for i in xrange(len(edify.script)):
    #if "format(" in edify.script[i] and "mmcblk0p16" in edify.script[i]:
      #edify.script[i] = 'format("ext4", "EMMC", "/dev/block/mmcblk0p16", "0", "/system");'
      #return
#

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def InstallImage(img_name, img_file, partition, info):
  common.ZipWriteStr(info.output_zip, img_name, img_file)
  info.script.AppendExtra(('package_extract_file("' + img_name + '", "' + partition + '");'))

def FullOTA_InstallEnd(info):
  RemoveDeviceAssert(info)
  AddLoki(info)

def IncrementalOTA_InstallEnd(info):
  RemoveDeviceAssert(info)
