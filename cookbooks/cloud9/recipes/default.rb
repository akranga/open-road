#
# Cookbook Name:: cloud9
# Recipe:: default
#
# Copyright 2014, Antons Kranga
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

user node.cloud9.user

directory File.expand_path("..", node.cloud9.home) do
  recursive true
  mode 00777
end

nvm_install node.nvm.version do
    from_source true
    action :create
end

git node.cloud9.home do
  repository node.cloud9.repository
  user node.cloud9.user
end
