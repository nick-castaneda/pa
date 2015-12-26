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
