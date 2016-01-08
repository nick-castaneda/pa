# README: Poli-Annotate

A CRUDy website that allows users to post transcripts of political events and to annotate those transcripts.

Poli-Annotate was created using the Ruby on Rails framework with a Postgres database.  This site uses the following languages: Ruby, Javascript, HTML, CSS.  It also takes advantage of the jQuery and Bootstrap libraries.

##Models
The models used in Poli-Annotate are: User, Transcript, Annotation, Comments, Tags.

**User:** email, password, name, partyid, city, state, tposts, aposts, cposts.

**Transcript:** title, text, date, tag_id

**Annotation:** text, link, transcript_id

**Comments:** text, annotation_id

**Party:** name

**Session** user_id

##Links and References
The Trello Board for my site can be found [here](https://trello.com/b/3ZZIIIZf/poli-annotate).

Head over to Nick Castañeda's [personal site](http://www.nick-castaneda.com) or [GitHub page](https://github.com/nick-castaneda) to see more of this developer's projects.

##Acknowledgements
**Special thanks to:**

John Kwak, my winter teammate, for coming up with my project name and working with me on the user model and on login functionality.

Fran Budiman for helping me set up an api for my site.

Adam Wilbert, the Modal Master, for guiding me through the setup of login modals.

Kedar Iyer for coming up with a workaround for storing javascript variables into my database.

My GA WDI instructors for doing an excellent job in teaching me rails.

Unscrupulous politicians, for inspiring me to create this application.





