#include <stdio.h>
#include "sqlite3.h"

int main() {
    sqlite3 *db;
    int rc;

    // Specify the name of the database file or create a new one
    const char *db_filename = "mydatabase.db";

    // Try to open the database
    rc = sqlite3_open(db_filename, &db);

    if (rc) {
        fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
        sqlite3_close(db);
        return 1;
    } else {
        printf("Database opened successfully!\n");
        // You can perform database operations here
        // Don't forget to close the database when done
        sqlite3_close(db);
        return 0;
    }
}
