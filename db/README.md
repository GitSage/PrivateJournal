This file contains an explanation of the database. Please see schema.sql for
the exact structure of the database.

In reality, only two tables are necessary for this application: a user table
and an entry table. 

******
Users
******
There are two types of users: a read/write user, and a read-only user. We will
refer to these two groups as "readers" and "writers."

As this is a private journal intended to be written by only one person, we will
expect only one writer. We understand that some people may desire to have more
than one writer for a journal, but in the interest of time, alpha 1.0 will not
guarantee availablility of more than one writer.

We will account for the possibility that the writer may wish to share his 
journal with others, as my father might invite me to read his journal. We will
allow for an arbitrary number of readers.

A "user" record will have the following fields:
-id (unique primary key autoincrement)
-username (unique)
-first name (optional)
-last name (optional)
-salt (unused in alpha 1.0)
-password (plaintext in alpha 1.0, hashed and salted in later versions)
-writer-reader (flag. 'writer' for writer, 'reader' for reader)
-date-created (should never be updated)
-date-password-last-modified



*******
Entries
*******
An entry consists of a subject and a body. The subject is plaintext. The body
may be markdown or HTML. 

We will store the following data for an entry:
-id (unique primary key autoincrement)
-user-id (foreign key to `user`.`id`)
-subject (plaintext)
-body (plaintext in the form of markdown or HTML)
-markdown-html (flag. 'markdown' for markdown, 'html' for html)
-date-created (should never be updated)
-date-last-modified
-unpublished (flag. 'published' or 'unpublished.' Will not be used in alpha 1.0)