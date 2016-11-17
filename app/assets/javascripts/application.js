// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize-sprockets
//= require_tree .

// Regex.Match(text, ([^<]*));

$(document).ready(function() {

    $("#raceInfo label").hover(function() {
        var race1 = $(this).attr("for");
        var race2 = race1.replace("character_race_id_", "#race");
        console.log(race2);
        $(race2).show();
    }, function() {
        $(".racePopup").hide();
    });

    $("#profInfo label").hover(function() {
        var prof1 = $(this).attr("for");
        var prof2 = prof1.replace("character_profession_id_", "#prof");
        console.log(prof2);
        $(prof2).show();
    }, function() {
        $(".profPopup").hide();
    });

    $("#bgInfo label").hover(function() {
        var bg1 = $(this).attr("for");
        var bg2 = bg1.replace("character_background_id_", "#bg");
        $(bg2).show();
    }, function() {
        $(".bgPopup").hide();
    });
});
