# Write-About-It-App

## Overview
### Description
Write down your notes, journal entries, and post pictures that will be stored to look back on. Capable of marking favorite entries based on user input.

# Tools:
- Parse

# Features
- Users can add/edit journal entries
- User logs in with login information for their unique journal entries
- User can make multiple journals, post pictures
- User can tag good memories and view them
- User can sort by favorites/date order (maybe)

## Wireframes
<img src="https://user-images.githubusercontent.com/54912970/97643194-48e39d80-1a04-11eb-8a97-2c27d87198dc.png" width=800><br>
<img src="https://user-images.githubusercontent.com/44785026/98054481-e61d4800-1def-11eb-8758-76e92e9c53c4.gif" width=250>

# Schema <br>

** Models **
** Post **
| Property      | Type          | Description                     |
| ------------- | ------------- | ------------------------------- |
| content       | String        | content of notes                |
| image         | File          | image that user posts for cover |
| createdAt     | DateTime      | date when note was created      |

## Networking
### List of netowrk requests by screen
- Home Journal Screen
 - (Read/GET) Query all notes created by author
- Create Note Screen
 - (Create/Post) Create a new note
- Note details screen
 - (Read/Get) Note content
