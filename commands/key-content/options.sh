# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Thu May  8 11:46:24 PDT 2014
#
#/ usage: rundeck-admin:key-content  --keypath <>  --user <admin>  --password <admin>  --url <http://localhost:4440> 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --keypath) rerun_option_check $# $1; KEYPATH=$2 ; shift ;;
            --user) rerun_option_check $# $1; USER=$2 ; shift ;;
            --password) rerun_option_check $# $1; PASSWORD=$2 ; shift ;;
            --url) rerun_option_check $# $1; URL=$2 ; shift ;;
            # help option
            -|--*?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$USER" ] && USER="$(rerun_property_get $RERUN_MODULE_DIR/options/user DEFAULT)"
    [ -z "$PASSWORD" ] && PASSWORD="$(rerun_property_get $RERUN_MODULE_DIR/options/password DEFAULT)"
    [ -z "$URL" ] && URL="$(rerun_property_get $RERUN_MODULE_DIR/options/url DEFAULT)"
    # Check required options are set
    [ -z "$KEYPATH" ] && { echo >&2 "missing required option: --keypath" ; return 2 ; }
    [ -z "$USER" ] && { echo >&2 "missing required option: --user" ; return 2 ; }
    [ -z "$PASSWORD" ] && { echo >&2 "missing required option: --password" ; return 2 ; }
    [ -z "$URL" ] && { echo >&2 "missing required option: --url" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
KEYPATH=
USER=
PASSWORD=
URL=


