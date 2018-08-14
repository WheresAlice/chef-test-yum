# # encoding: utf-8

# Inspec test for recipe yum_test::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe packages(/hbase/) do
  its('statuses') { should_not cmp 'installed' }
end

describe packages(/kudu/) do
  its('statuses') { should cmp 'installed' }
end