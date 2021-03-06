[rundeck-admin](../../index.html)
# resource-add 

Add a resource to a project resource model.

## SYNOPSIS

    rerun rundeck-admin:resource-add --user <$RUNDECK_USER> --password <$RUNDECK_PASSWORD> --url <$RUNDECK_URL> --project <> --model <>

### OPTIONS

* [    --user <$RUNDECK_USER>: the login user name.](../../options/user/index.html)
* [    --password <$RUNDECK_PASSWORD>: the login password.](../../options/password/index.html)
* [    --url <$RUNDECK_URL>: rundeck server url.](../../options/url/index.html)
* [    --project <>: the project name.](../../options/project/index.html)
* [    --model <>: the resource model.](../../options/model/index.html)

## README

Use **resource-add** to add a node to the project resource model.

The `--model` option specifies the model information for the node.
The model must be specified as a single string.
Each node property in the model is specified using a *-property value* pattern. Two
properties are required: -name and -description.

Specify other properties by prefixing a leading dash. For example
to declare that foo=bar for a node, say: "--model '-foo bar'".

Examples
--------

Add a node named "skippy" to the "examples" project:

    rerun rundeck-admin: resource-add --user admin --password admin --url http://localhost:4440 \
         --project examples \
         --model "-name skippy -description 'skip to the loo' -tags fun,simple -hostname skippy.local -foo bar -osFamily unix"

After adding the node, you can get the model back using *resource-get*:

    rerun rundeck-admin: resource-get --user admin --password admin --url http://localhost:4440 \
         --project examples --resource skippy

    skippy:
      osFamily: unix
      tags: fun, simple
      username: alexh
      foo: bar
      osVersion: 
      description: skip to the loo
      nodename: skippy
      hostname: skippy.local

## TESTS

Use the `stubbs:test` command to to run test plans.

    rerun stubbs:test -m rundeck-admin -p resource-add

*Test plan sources*

* [resource-add-1](../../tests/resource-add-1.html)
  * it creates a resource
  * it updates a resource

## SCRIPT

To edit the command script for the rundeck-admin:resource-add command, 
use the `stubbs:edit`
command. It will open the command script in your shell EDITOR.

    rerun stubbs:edit -m rundeck-admin -c resource-add

*Script source*

* [script](script.html): `RERUN_MODULE_DIR/commands/resource-add/script`

## METADATA

* `NAME` = resource-add
* `DESCRIPTION` = "Add a resource to a project resource model."
* `OPTIONS` = "user password url project model"

----

*Generated by stubbs:docs Wed May 14 15:58:08 PDT 2014*

