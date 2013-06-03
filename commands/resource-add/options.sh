# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Thu May 30 13:42:05 PDT 2013
#
#/ usage: rundeck-admin:resource-add  --password <>  --project <>  --user <>  --url <>  --model <> 

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
            --password) rerun_option_check $# $1; PASSWORD=$2 ; shift ;;
            --project) rerun_option_check $# $1; PROJECT=$2 ; shift ;;
            --user) rerun_option_check $# $1; USER=$2 ; shift ;;
            --url) rerun_option_check $# $1; URL=$2 ; shift ;;
            --model) rerun_option_check $# $1; MODEL=$2 ; shift ;;
            # help option
            -?)
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

    # Check required options are set
    [ -z "$PASSWORD" ] && { echo >&2 "missing required option: --password" ; return 2 ; }
    [ -z "$PROJECT" ] && { echo >&2 "missing required option: --project" ; return 2 ; }
    [ -z "$USER" ] && { echo >&2 "missing required option: --user" ; return 2 ; }
    [ -z "$URL" ] && { echo >&2 "missing required option: --url" ; return 2 ; }
    [ -z "$MODEL" ] && { echo >&2 "missing required option: --model" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
PASSWORD=
PROJECT=
USER=
URL=
MODEL=


