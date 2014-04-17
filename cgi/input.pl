#!/usr/bin/perl

use strict;
use warnings;
use CGI;

my $cgi = CGI->new();
#my $sum = 0;

print "Location:http://capybara.cr.ie.u-ryukyu.ac.jp/input.html\n\n";

print "<html>";
print "<head>";

print "Content-type: text/html\n";
print "Pragma: no-cache\n";
print "Cache-Control: no-cache\n";
print "Expires: Thu, 01 Dec 1994 16:00:00 GMT\n\n";

print "</head>";
print "<body>";

#print $cgi->header( -charset => 'utf-8' );
#print $cgi->start_html('hello');
#print $cgi->h1('hoge');

#print  
#    $cgi->start_form(-action => './input.pl'), 
#    $cgi->textfiled(-name=>'Q', -size=> 10, -maxlength=>16); 
#    $cgi->hidden(-name => 'count', -value => $sum ), 
#    $cgi->submit(-name => 'submit', -value => '(・∀・)ｲｲﾈ!!'), 
#    $cgi->endform;

#print "<html>"

if ( $cgi->param('submit') ) {

    open(FILE,"+</var/www/log.txt");    #読み書き両用ファイル
    flock(OUT, 2);
    $a=<FILE>;
    $a++;
    print $a;
    seek(FILE, 0, 0);       #ファイルの先頭へ
    print FILE "$a";
    close(FILE);

}

print "</body>";
print "</html>";

#print $cgi->end_html;
