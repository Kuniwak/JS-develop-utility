# This script licensed under the MIT.
# http://orgachem.mit-license.org

# This script can works on above directory structure.
#
# {ProjectRoot} / *.js
#               / tools / jsdoc / jsdoc.rb (This script)

# Arguments processing module
require 'optparse'

# Absolute path of directory including this script
SCRIPT_DIR_PATH = File.dirname(File.expand_path(__FILE__))

# Absolute path of Root directory
ROOT_DIR_PATH = SCRIPT_DIR_PATH + "/.."

# Absolute path of JsDoc utility directory
JSDOC_UTIL_PATH = "#{SCRIPT_DIR_PATH}/jsdoc/jsdoc.rb"

INPUT_DIR = ROOT_DIR_PATH
OUTPUT_DIR = "#{ROOT_DIR_PATH}/docs"

`ruby #{JSDOC_UTIL_PATH} -i #{INPUT_DIR} -o #{OUTPUT_DIR}`