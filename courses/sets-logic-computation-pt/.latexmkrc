# Gera slc-screen.gls / slc-print.gls a partir dos .glo (glossaries)
add_cus_dep('glo', 'gls', 0, 'makeglossaries_from_glo');
sub makeglossaries_from_glo {
    my ($base) = fileparse( $_[0] );
    system("makeglossaries", $base);
}
