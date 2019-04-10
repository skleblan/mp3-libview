#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use mp3lib;

mp3lib->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use mp3lib;
use Plack::Builder;

builder {
    enable 'Deflater';
    mp3lib->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use mp3lib;
use mp3lib_admin;

use Plack::Builder;

builder {
    mount '/'      => mp3lib->to_app;
    mount '/admin'      => mp3lib_admin->to_app;
}

=end comment

=cut

