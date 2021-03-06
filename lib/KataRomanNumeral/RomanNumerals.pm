package KataRomanNumeral::RomanNumerals;

use 5.006;
use strict;
use warnings;
use POSIX;
use List::Util qw[min max];
=head1 NAME

KataRomanNumeral::RomanNumerals - The great new KataRomanNumeral::RomanNumerals!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use KataRomanNumeral::RomanNumerals;

    my $foo = KataRomanNumeral::RomanNumerals->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

my @roman_char = ('I','V','X','L','C');

sub find_roman {
    my $number = shift;
    
    my $temp_roman = '';
    
    return roman( floor( $number / 10), 2 ). roman( $number % 10, 0 );
    #suppose number == 100 return roman(10,2).roman(0,0) 
    
       
}

sub roman {
    my $number = shift; 
    my $position = shift;
    my $number_factor = $position+1; 
    
    if ( $number == 0 ){
        return ''; 
    } elsif ( $number < 4 ){
        
        return $roman_char[ $position ] x $number;
    
    } elsif ( $number < 9 ) {
  
        return $roman_char[ $position ] x ( 5 - $number ).$roman_char[ $number_factor ].roman( $number - 5, $position );
        
    } else {
         
        return $roman_char[ $position ] x ( 10 - $number ).$roman_char[ $number_factor + 1 ].roman( $number - 10, $position );
        #suppose $number == 90 , $position = 
    }
}
=head2 function2

=cut

sub function2 {
}

=head1 AUTHOR

ABC Tech, C<< <oi at abctech.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-kataromannumeral-romannumerals at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=KataRomanNumeral-RomanNumerals>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc KataRomanNumeral::RomanNumerals


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=KataRomanNumeral-RomanNumerals>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/KataRomanNumeral-RomanNumerals>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/KataRomanNumeral-RomanNumerals>

=item * Search CPAN

L<http://search.cpan.org/dist/KataRomanNumeral-RomanNumerals/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 ABC Tech.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of KataRomanNumeral::RomanNumerals
