# Author: David Akre
# Top design constraints for zybo z720

# Create clock
create_clock -name clk_p -period 10.0 [get_ports clk_p]

