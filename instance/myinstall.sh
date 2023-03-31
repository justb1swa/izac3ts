################################################################################
# This Script provisions basic updates to the Host also adds Keys for access
# Installs Net Tools
#  Created by Bis Tripathy v1.1.1.0 date:3/2/2023
# Modified by John Carrol v.1.1.1.0 Bug#106 date:3/11/2023
################################################################################
#!/bin/bash
echo "Run the latest update to the Staging Server server"
echo "add Bis ssh key value to do ssh"
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCy1P+JVI1/OfQx0rRp8sm37rxOm6U7d9Jl6w8+YIpF+kJpKR/gvK1O45Jpp5pZuCHn6DOhtuRdLZmhHDO0yK3G6gUinhv6URfbKtR92q2OnE6xIOVoxKVK33cZ1nvV56zjhjCa/Mmo1K+kXvsxT6y0KGitnd/eshvw6TTmhHDwVlicXwr4cu+gWMPncmQ+qJDeu/oAtx/R8WMof/seN778YLb7E4l1ihYfX9U3svNysLnBlfqUlE0K4gIYSXmtAVZ0r26WRdXpCJx1UKcEgRzorKe5rfDc4ZOJ/qdkrO3m8MNR1WBVZQGocgXJLH/l/hzbA9veQcrU2oOi6/2t24PV cmucapstonebis" >> /home/ubuntu/.ssh/authorized_keys
echo "add Mukesh ssh key value to do ssh"
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0zHZqeCyz/W86cnaAhHKEuN8XuhDDFwmIq7Bw1YLfa9lCdNDVdMneg5+01hCODh7PHIE2vqdhzuX2Iu4qjzlEDPy4qK+5LCAzEInFTOYdkJfqwV255UHAUz69u9Mi+sdhIYPqYPMBkG8mNGhm3cv6XDNRYhQ9+Dj63K4hpXPzJczuzZQhAIv7/v6bGkMNmYtxzJc3mlDDSIaYqzMIcdnJwKzAgyfUU8deuMGmj3PNeF6zpnRmgyuFxNkU2X1QD+fsmmLAkaQK43NlQBLZ8JFm8guErU69NVuTgAXZUZnbjZaBm3wBe1Ay7qsu4dm4vfJem2CyuFU1qMBBEdx06QJB mukesh4capstonecmu" >> /home/ubuntu/.ssh/authorized_keys
echo "add John ssh key value to do ssh"
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDS3b75nEzlrmkjIPRtKH0tF3M6UxK6AtMXiYaTfZXUvVqmqFSlrI8mnLcVADedsrg4Zb5rfti1WnZvp3RxWKzoZJ6ITMI2m2/sUJJ4UJzJZo4CGI5l+WUiA/c8MOxuOEc4nEtHBjxBcYYFLH9EEFAgdRCI/Wb5XoFz3Ppftxh7xxBN1y6DQk1cT1bQGH9lfp2s4PGnAnN7sLb6HxNXbNo02VQ6hsuZuuWejB/iTurLhNrgxbGfsBREqQjXa1RjgUQLsYswj30ZnHV7DIlCIRHAqWYlVNVaTZMlmbOi3SJcCn8kPwzKlGSjzTHfBIaoosJ8fHYMq52XMr6+7gFRqyWsr3Nyb3STcuHNRgvQbnrpP0i4ontTMJrU/cj80Jrvsyc6KaiPi1vrxfMLUrOJ3fvZHoMB3U26dm8oMzjDwwlwhWyacDmkHdZPNzc/oYfO/wyxJadLT6ERzGh0XJ0OjuFU0dvAady9821Z0S42M9FKWmpACfLTRMxXaioMMdDtuUE= root@KIND-M-1518" >> /home/ubuntu/.ssh/authorized_keys
echo "add Bhagyesh ssh key value to do ssh"
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCNtpc+niAxQ11KzmxYv6JIY01T5S4DjMBafeKzoRDhVDMhC7tMaXU/611Lb0NJYA+VX6eqdv9aQPYQ06LyFkUTatiVktYunGkK6dAywHbF3QS6IB/7QP40QoNRRBO/i46XScllJUm4VSzn103cU0jqQ0HkyF1W2ImGmaxzMQ1qjblTNE8+ba/Ahrhr9DHwjuzAfCjiblIeaoJOn+kPXgvMYXK6qC9482b+D650W3ZrHLOA4+MYhm1C6hBp64Mp9EtnPFBy34yPm2UlEKk/t79DpVKq+ZdAi+HYj9O+j9+zd2tnK048p7VA8vx219gWnrsUE8gIf/2DW+/bqshCnUA3 Demo1-Key" >> /home/ubuntu/.ssh/authorized_keys
echo " Add infra server HARBOR ssh key "
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDIDmpHRWlLrf7QLvlDb9WuXbeS3H4Ujm84uWWOk2qor6mIUWT3NthbwPEBWNa5+f0k9MGNhBUFHryYl0ir+WZDpYBzBAvakyxeBlC79JEctGQ9e0iJeE/UrAz1NK+FVdiXga7JYTiEIx83lTGuPTmxM51MvLO5tjJApuVukzSNS9N9hW+pUrJBbUWpe5xXaUxynVN2pR1IEAGT3s7Muk+K0nJ8yIrgdydqHEZnpxzFiT7yoQuAKVq6OTRd0FaQHg/X+VN5G4Z0RnuIUsDLS6kTvatwUUTHL6nvPj1vUnxqI4it1f7jCKuLLsPcDpfhq3vg0Y6OMowv+FYtXS3zD7URNP/kAumfCSNGaiS5ECV1ZOhmy09wY0xLF1hQa+ClPvGv4n5S9+OTiYlxhfY4saQ4lVA+6suRA9uD68SLRRa6e8w/lgkV+d6LguBp1/9dErTcA7R8w3nyT6N1XMbJfhFWD3xQDGdNjf/OuvD66CbTupqOEBo/ov6srxm1fzVLpt8= ubuntu@ip-172-31-54-92" >> /home/ubuntu/.ssh/authorized_keys
