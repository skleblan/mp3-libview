use utf8;
package mp3lib::schema::Result::Album;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

mp3lib::schema::Result::Album

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<album>

=cut

__PACKAGE__->table("album");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'nvarchar'
  is_nullable: 0
  size: 100

=head2 artistid

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "nvarchar", is_nullable => 0, size => 100 },
  "artistid",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2019-04-10 17:10:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WVWRr5ack2JESsOhGgXBYQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
