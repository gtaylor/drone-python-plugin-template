{{ PLUGIN_NAME }}
{{ TITLE_UNDERLINE }}

{{ SHORT_DESCRIPTION }}

Overview
--------

Run the plugin directly after installing requirements:

.. code-block:: bash

    python plugin/main.py <<EOF
    {
        "repo" : {
            "owner": "foo",
            "name": "bar",
            "full_name": "foo/bar"
        },
        "system": {
            "link_url": "http://drone.mycompany.com"
        },
        "build" : {
            "number": 22,
            "status": "success",
            "started_at": 1421029603,
            "finished_at": 1421029813,
            "commit": "9f2849d5",
            "branch": "master",
            "message": "Update the Readme",
            "author": "johnsmith",
            "author_email": "john.smith@gmail.com"
        },
        "vargs": {
            "room_auth_token": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
            "room_id_or_name": 1234567,
            "message_notify": true
        }
    }
    EOF

Docker
------

Alternatively, run the plugin directly from a built Docker image:

.. code-block:: bash

    docker run -i {{ ORG_OR_AUTHOR_USERNAME }}/{{ PLUGIN_NAME }} <<EOF
    {
        "repo" : {
            "owner": "foo",
            "name": "bar",
            "full_name": "foo/bar"
        },
        "system": {
            "link_url": "http://drone.mycompany.com"
        },
        "build" : {
            "number": 22,
            "status": "success",
            "started_at": 1421029603,
            "finished_at": 1421029813,
            "commit": "9f2849d5",
            "branch": "master",
            "message": "Update the Readme",
            "author": "johnsmith",
            "author_email": "john.smith@gmail.com"
        },
        "vargs": {
            "room_auth_token": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
            "room_id_or_name": 1234567,
            "message_notify": true
        }
    }
    EOF


License
-------

{{ PLUGIN_NAME }} is licensed under the Apache License. A copy is included
in this repository.
