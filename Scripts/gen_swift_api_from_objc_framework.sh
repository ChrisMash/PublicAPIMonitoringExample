#
# https://github.com/ChrisMash/PublicAPIMonitoringExample
#
# Generates the Swift API from the specified framework and places it in the specified directory
# with the filename <FRAMEWORK_NAME>_swift_api.txt
#
# NOTE: Intended for use with pure ObjC frameworks, your mileage may vary for Swift frameworks.
# NOTE: Should be run with bash rather than sh due to usage of echo -e.
#
# Parameters:
# - The name of the framework (without extension)
# - The path to the framework file
# - The directory to output the file to
#
# Example: bash gen_swift_api_from_objc_framework.sh ObjC_Framework ./ ./api
#

STARTTIME=$(date +%s)

FRAMEWORK_NAME=$1
FRAMEWORK_DIR=$2
OUTPUT_DIR=$3

echo -e "import ${FRAMEWORK_NAME}\n:type lookup ${FRAMEWORK_NAME}" | xcrun -sdk macosx swift -F "${FRAMEWORK_DIR}" > "${OUTPUT_DIR}/${FRAMEWORK_NAME}_swift_api.txt"

ENDTIME=$(date +%s)
echo "Executed in ~$(($ENDTIME - $STARTTIME))s"
