#!/usr/bin/env bash

 if [[ "$OSTYPE" == "darwin"* ]];
then
    psql -d postgres -a -f myscript/drop_db.sql
    psql -d postgres -a -f myscript/create_db.sql
else
    sudo -u postgres psql -a -f myscript/drop_db.sql
    sudo -u postgres psql -a -f myscript/create_db.sql
fi

myscript/remove_migrations.sh
myscript/mm.sh
myscript/migrate.sh