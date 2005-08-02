use strict;
use Test::More tests => 1;
use Acme::JavaTrace 'showrefs';

my $text = "Advice from Klortho #11901: You can't just make shit up and expect the computer to know what you mean, Retardo!";

eval {
    die bless { type => 'error', text => $text }, 'Exception'
};

like( $@, 
      qq|/^Caught exception object: Exception=HASH\\(0x[0-9a-fA-F]+\\): bless\\( \\{\n|.
      qq|\\s+'text' => 'Advice from Klortho #11901: You can\\\\'t just make shit up and expect the computer to know what you mean, Retardo!',\n|.
      qq|\\s+'type' => 'error',?\n|.
      qq|\\}, 'Exception' \\)/|, 
      "checking the trace"
);
