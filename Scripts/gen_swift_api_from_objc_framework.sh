FRAMEWORK_NAME=$1
FRAMEWORK_DIR=$2
OUTPUT_DIR=$3
echo -e "import ${FRAMEWORK_NAME}\n:type lookup ${FRAMEWORK_NAME}" | xcrun -sdk macosx swift -F "${FRAMEWORK_DIR}" > "${OUTPUT_DIR}/${FRAMEWORK_NAME}_swift_api.txt"
