Facter.add('role') do
  setcode do
    hostname = Facter.value('hostname')
    match = hostname.match /^(\D+)/
    role = match.captures[0]
    role
  end
end
