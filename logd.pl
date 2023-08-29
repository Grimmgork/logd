use HTTP::Server::PSGI;

use constant PORT => 5050;
use constant HOST => "127.0.0.1";

my $server = HTTP::Server::PSGI->new(
	host => HOST,
	port => PORT,
	timeout => 120
);

$server->run(\&app);

sub app {
	my $env = shift;
}