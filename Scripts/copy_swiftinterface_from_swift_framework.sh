#
# Copies the specified .swiftinterface file from the specified Swift framework and places it in
# the specified directory with the filename <FRAMEWORK_NAME>_swift_api.txt
#
# Parameters:
# - The name of the framework file (with extension)
# - The path to the framework file
# - The architecture to copy the .swiftinterface of
# - The directory to output the file to
# e.g. sh copy_swiftinterface_from_swift_framework.sh Swift_Framework.framework ./ arm64 ./api
#

FRAMEWORK_NAME_WEXT=$1
FRAMEWORK_DIR=$2
INTERFACE=$3
OUTPUT_DIR=$4
FRAMEWORK_NAME="${FRAMEWORK_NAME_WEXT%.*}"
SOURCE_PATH="${FRAMEWORK_DIR}/${FRAMEWORK_NAME_WEXT}/Modules/${FRAMEWORK_NAME}.swiftmodule/${INTERFACE}.swiftinterface"
cp $SOURCE_PATH "${OUTPUT_DIR}/${FRAMEWORK_NAME}_swift_api.txt"
