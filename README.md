# README: PoliTate

PoliTate is an interactive website that allows users to post transcripts of political events and to annotate those transcripts. The mission of PoliTate is to encourage an open discussion of political statements and the facts that underlie them.

A visitor to the site can register, login, post and view transcripts, and post, view, and edit annotations on a specific phrase or sentence. Admins have the ability to ban users, to delete and edit transcripts, and to delete annotations.

##Technology
Poli-Annotate was created using the Ruby on Rails framework with a Postgres database. This site uses the following languages: Ruby, Javascript, HTML, CSS. It also takes advantage of the jQuery and Bootstrap libraries. In addition to the standard Rails gems, PoliTate uses Faker, Bcrypt, Bootstrap, Paginate, and Rails_12factor.

##Features
####CRUD Features

* The User model is fully CRUDable. Only admins can delete users.
* The Party model can only be read. (Eventually admins will be able to create, edit, and destroy parties)
* Transcripts can be created and read. (Eventually admins will be able to delete and edit transcripts)
* Annotations can be created and read. (Eventually users will be able to delete and edit annotations)
* While most rails websites are static, PoliTate is able to analyze dynamic html and store information from it onto it's database. PoliTate's ruby/javascript function that makes this possible is presented below:

~~~javascript

    var ready;
    ready = function() {

      // If you click a word in the content, the "red_text" class is
      // added.
      $("span").on("click", function(event) {
        if (!$(this).hasClass("red_text") && !$(this).is("#new_anno")){
          $(this).toggleClass( "yellow_text" );
        }
      });

      // Variables for text selection
      var start = 0;
      var end = 0;
      var error = "";
      var skip = false;
      var clicked_array = [];

      // Method goes through each word, and pushes it to an array if the
      // word has a class of "red_text"
      <% def word_check %>
        var counter = -1;
        clicked_array = [];
        skip = false;
        <% for x in 0..@word_array.length %>
          if($("#word_<%= x %>").hasClass( "yellow_text" )){
            clicked_array.push(<%= x %>);
            counter ++;
            if(counter !== 0 && clicked_array.indexOf(<%= x %> - 1) === -1){
              skip = true;
            }
          }
        <% end %>
        // This part sets up the start and end variables
        if(counter >= 15){
          error = "Too many letters, try again!";
        } else if(counter < 0) {
          error = "Pick a word to annotate!";
        } else if(skip) {
          error = "All words must be in a row!";
        } else {
          start = clicked_array[0]
          end = clicked_array[counter]
          error = ""
        }
      <% end %>

      // CLicking the title runs the word_check method
      // Clicking h3 runs the new page for a new annotation
      $("#new_anno").on("click", function(event) {
        <% word_check %>;
        if(error === ""){
          window.location.href = '/annotations/' + start + '/' + end + '/new'
        }else{
          console.log(error);
          console.log(clicked_array);
        }
      });

    };


    $(document).ready(ready);
    $(document).on('hi, world', ready)

~~~

####Security Features
* Passwords are stored as a hash digest (through bcrypt) for extra secuity.
* Non-registered users are not allowed to view user profiles.
* Many CRUD actions are protected by a method that requires an admin to be logged in.

####Other Features

* PoliTate uses modals, instead of a separate page, for login.
* PoliTate stores cookies on users' computers, so that if you close your browser and revisit the page, you'll still be logged in.

##Models
The models currently used in Poli-Annotate are: User, Transcript, Annotation, and Party.

**User:** email, password, name, party_id, city, state.

**Transcript:** title, text, date, user_id

**Annotation:** text, link, start_word, end_word, transcript_id, user_id

**Party:** name

***Session:*** user_id

##Site Design
###Wireframes
(please excuse the terrible handwriting)

![Home Page](http://i.imgur.com/aZl7KZx.jpg)

![Profile Page](http://i.imgur.com/PB4IREN.jpg)

![Transcript Page](http://i.imgur.com/T6s3XwK.jpg)

###ORM
![Transcript Page](http://i.imgur.com/UNmV3Lq.jpg?1)

##Links and References
The Trello Board for my site can be found [here](https://trello.com/b/3ZZIIIZf/poli-annotate).

Head over to Nick Castañeda's [personal site](http://www.nick-castaneda.com) or [GitHub page](https://github.com/nick-castaneda) to see more of this developer's projects.

##Acknowledgements
Special thanks to:

John Kwak, my winter teammate, for coming up with my project name and working with me on the user model and on login functionality.

Adam Wilbert, the Modal Master, for guiding me through the setup of login modals.

Fran Budiman for helping me set up an api for my site.

Kedar Iyer for coming up with a workaround for storing javascript variables into my database.

My GA WDI instructors for doing an excellent job in teaching me rails.

Unscrupulous politicians, for inspiring me to create this application.





