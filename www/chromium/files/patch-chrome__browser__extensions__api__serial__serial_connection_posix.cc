--- chrome/browser/extensions/api/serial/serial_connection_posix.cc.orig	2013-05-07 23:41:27.000000000 +0300
+++ chrome/browser/extensions/api/serial/serial_connection_posix.cc	2013-05-08 00:08:36.000000000 +0300
@@ -67,7 +67,7 @@
       case 38400:
         bitrate_opt_ = B38400;
         break;
-#if defined(OS_POSIX) && !defined(OS_MACOSX)
+#if defined(OS_POSIX) && !defined(OS_MACOSX) && !defined(OS_BSD)
       case 57600:
         bitrate_opt_ = B57600;
         break;
