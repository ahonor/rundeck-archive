[rundeck-admin](../../index.html)
# jobs-archive 

Archive job files suitable for project import.

## SYNOPSIS

    rerun rundeck-admin:jobs-archive [--dir <>] [--archive <>]

### OPTIONS

* [   [--dir <>]: directory path](../../options/dir/index.html)
* [   [--archive <>]: the archive file.](../../options/archive/index.html)

## README

Use **jobs-archive** to create an archive of job definitions suitable for import with project-import.

The `--dir <>` option specifies the directory to look for jobs. Any jobs in subdirectories
will also be included.
If no `--dir <>` is specified, the current working directory is used.    

Job definitions must be files in [Job XML format](http://rundeck.org/docs/manpages/man5/job-v20.html). Job definitions can contain more than one job. This command specifically checks
a /joblist/job/name element in the job definition files.


Examples
--------
Assume a directory structure with two job definition files:

    /tmp/myjobs
      |-- job-1.xml
      `-- subdir
           `-- job-2.xml

Create an archive called "myjobs.zip" from any jobs found in directory "/tmp/myjobs":

    rerun rundeck-admin: jobs-archive --archive myjobs.zip --dir /tmp/myjobs

If `--archive <>` is unspecified, the archive file name will default to the name of the directory.

    rerun rundeck-admin: jobs-archive --dir /tmp/myjobs

Will produce an archive called "myjobs.zip".

With out any options, the command will look for jobs in the current working dirctory:

    cd /tmp/myjobs
    rerun rundeck-admin: jobs-archive 
    ls -l myjobs.zip

## TESTS

Use the `stubbs:test` command to to run test plans.

    rerun stubbs:test -m rundeck-admin -p jobs-archive

*Test plan sources*

* [jobs-archive-1](../../tests/jobs-archive-1.html)
  * it fails if no job files found
  * it archives job file dirs recursively

## SCRIPT

To edit the command script for the rundeck-admin:jobs-archive command, 
use the `stubbs:edit`
command. It will open the command script in your shell EDITOR.

    rerun stubbs:edit -m rundeck-admin -c jobs-archive

*Script source*

* [script](script.html): `RERUN_MODULE_DIR/commands/jobs-archive/script`

## METADATA

* `NAME` = jobs-archive
* `DESCRIPTION` = "Archive job files suitable for project import."
* `OPTIONS` = "dir archive"

----

*Generated by stubbs:docs Wed Jun 26 07:21:47 PDT 2013*
