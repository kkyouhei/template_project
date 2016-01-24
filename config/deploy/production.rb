# elbに紐づくインスタンスidを取得
elb = aws::elasticloadbalancing::client.new
instance_states =  elb.describe_instance_health(load_balancer_name: "production_load_balancer_name").instance_states
target_ec2_instance_ids = []
instance_states.each do |instance_state|
  target_ec2_instance_ids << instance_state.instance_id if instance_state.state == "inservice"
end

# インスタンスidからipを取得し配列にする
ec2 = aws::ec2::client.new
response = ec2.describe_instances instance_ids: target_ec2_instance_ids
ip_addresses = response.reservations.map{|r| r.instances.map {|i| i.public_ip_address}}.flatten

# ip_addressesからデプロイ対象を決定する
ip_addresses.each do |ip|
  server ip.to_s, user: 'ec2-user', roles: %w{web app}
end
