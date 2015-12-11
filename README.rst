drone-hipchat
=============

Drone plugin for sending HipChat notifications


Overview
--------

This plugin is responsible for sending build notifications to your
HipChat channel:

.. code-block:: bash

    python send-notification.py <<EOF
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

Send a HipChat notification:

.. code-block:: bash

    docker run -i gtaylor/drone-hipchat <<EOF
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

drone-hipchat is licensed under the BSD 3-Clause License. A copy is included
in this repository.
