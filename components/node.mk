# Main-level make descriptor
# --------------------------
#
# List all implementation subdirectories with node.mk files in them
SUBDIRS-y += SimpleAdderServiceImpl #SimplePrinterServiceImpl FilePrinterServiceImpl MainControllerServiceImpl
# List all top-level *.o files - should be only main.o to keep things clean
OBJS-y    += main.o
# List all library (*.a) files here if necessary
LIBS-y    +=
