wire  sys_rst;
wire  c0_init_calib_complete;
wire  c0_ddr4_ui_clk;
wire  c0_ddr4_ui_clk_sync_rst;
wire  dbg_clk;
wire  c0_ddr4_aresetn;
wire [15:0] c0_ddr4_s_axi_awid;
wire [29:0] c0_ddr4_s_axi_awaddr;
wire [7:0] c0_ddr4_s_axi_awlen;
wire [2:0] c0_ddr4_s_axi_awsize;
wire [1:0] c0_ddr4_s_axi_awburst;
wire [0:0] c0_ddr4_s_axi_awlock;
wire [3:0] c0_ddr4_s_axi_awcache;
wire [2:0] c0_ddr4_s_axi_awprot;
wire [3:0] c0_ddr4_s_axi_awqos;
wire  c0_ddr4_s_axi_awvalid;
wire  c0_ddr4_s_axi_awready;
wire [127:0] c0_ddr4_s_axi_wdata;
wire [15:0] c0_ddr4_s_axi_wstrb;
wire  c0_ddr4_s_axi_wlast;
wire  c0_ddr4_s_axi_wvalid;
wire  c0_ddr4_s_axi_wready;
wire  c0_ddr4_s_axi_bready;
wire [15:0] c0_ddr4_s_axi_bid;
wire [1:0] c0_ddr4_s_axi_bresp;
wire  c0_ddr4_s_axi_bvalid;
wire [15:0] c0_ddr4_s_axi_arid;
wire [29:0] c0_ddr4_s_axi_araddr;
wire [7:0] c0_ddr4_s_axi_arlen;
wire [2:0] c0_ddr4_s_axi_arsize;
wire [1:0] c0_ddr4_s_axi_arburst;
wire [0:0] c0_ddr4_s_axi_arlock;
wire [3:0] c0_ddr4_s_axi_arcache;
wire [2:0] c0_ddr4_s_axi_arprot;
wire [3:0] c0_ddr4_s_axi_arqos;
wire  c0_ddr4_s_axi_arvalid;
wire  c0_ddr4_s_axi_arready;
wire  c0_ddr4_s_axi_rready;
wire [15:0] c0_ddr4_s_axi_rid;
wire [127:0] c0_ddr4_s_axi_rdata;
wire [1:0] c0_ddr4_s_axi_rresp;
wire  c0_ddr4_s_axi_rlast;
wire  c0_ddr4_s_axi_rvalid;
wire [511:0] dbg_bus;

xilinx_ddr4_ctrl_axi128
i_ddr4_ctrl_axi128
(
	.sys_rst(sys_rst),
	.c0_sys_clk_p(c0_sys_clk_p),
	.c0_sys_clk_n(c0_sys_clk_n),
	.c0_ddr4_act_n(c0_ddr4_act_n),
	.c0_ddr4_adr(c0_ddr4_adr),
	.c0_ddr4_ba(c0_ddr4_ba),
	.c0_ddr4_bg(c0_ddr4_bg),
	.c0_ddr4_cke(c0_ddr4_cke),
	.c0_ddr4_odt(c0_ddr4_odt),
	.c0_ddr4_cs_n(c0_ddr4_cs_n),
	.c0_ddr4_ck_t(c0_ddr4_ck_t),
	.c0_ddr4_ck_c(c0_ddr4_ck_c),
	.c0_ddr4_reset_n(c0_ddr4_reset_n),
	.c0_ddr4_dm_dbi_n(c0_ddr4_dm_dbi_n),
	.c0_ddr4_dq(c0_ddr4_dq),
	.c0_ddr4_dqs_c(c0_ddr4_dqs_c),
	.c0_ddr4_dqs_t(c0_ddr4_dqs_t),
	.c0_init_calib_complete(c0_init_calib_complete),
	.c0_ddr4_ui_clk(c0_ddr4_ui_clk),
	.c0_ddr4_ui_clk_sync_rst(c0_ddr4_ui_clk_sync_rst),
	.dbg_clk(dbg_clk),
	.c0_ddr4_aresetn(c0_ddr4_aresetn),
	.c0_ddr4_s_axi_awid(c0_ddr4_s_axi_awid),
	.c0_ddr4_s_axi_awaddr(c0_ddr4_s_axi_awaddr),
	.c0_ddr4_s_axi_awlen(c0_ddr4_s_axi_awlen),
	.c0_ddr4_s_axi_awsize(c0_ddr4_s_axi_awsize),
	.c0_ddr4_s_axi_awburst(c0_ddr4_s_axi_awburst),
	.c0_ddr4_s_axi_awlock(c0_ddr4_s_axi_awlock),
	.c0_ddr4_s_axi_awcache(c0_ddr4_s_axi_awcache),
	.c0_ddr4_s_axi_awprot(c0_ddr4_s_axi_awprot),
	.c0_ddr4_s_axi_awqos(c0_ddr4_s_axi_awqos),
	.c0_ddr4_s_axi_awvalid(c0_ddr4_s_axi_awvalid),
	.c0_ddr4_s_axi_awready(c0_ddr4_s_axi_awready),
	.c0_ddr4_s_axi_wdata(c0_ddr4_s_axi_wdata),
	.c0_ddr4_s_axi_wstrb(c0_ddr4_s_axi_wstrb),
	.c0_ddr4_s_axi_wlast(c0_ddr4_s_axi_wlast),
	.c0_ddr4_s_axi_wvalid(c0_ddr4_s_axi_wvalid),
	.c0_ddr4_s_axi_wready(c0_ddr4_s_axi_wready),
	.c0_ddr4_s_axi_bready(c0_ddr4_s_axi_bready),
	.c0_ddr4_s_axi_bid(c0_ddr4_s_axi_bid),
	.c0_ddr4_s_axi_bresp(c0_ddr4_s_axi_bresp),
	.c0_ddr4_s_axi_bvalid(c0_ddr4_s_axi_bvalid),
	.c0_ddr4_s_axi_arid(c0_ddr4_s_axi_arid),
	.c0_ddr4_s_axi_araddr(c0_ddr4_s_axi_araddr),
	.c0_ddr4_s_axi_arlen(c0_ddr4_s_axi_arlen),
	.c0_ddr4_s_axi_arsize(c0_ddr4_s_axi_arsize),
	.c0_ddr4_s_axi_arburst(c0_ddr4_s_axi_arburst),
	.c0_ddr4_s_axi_arlock(c0_ddr4_s_axi_arlock),
	.c0_ddr4_s_axi_arcache(c0_ddr4_s_axi_arcache),
	.c0_ddr4_s_axi_arprot(c0_ddr4_s_axi_arprot),
	.c0_ddr4_s_axi_arqos(c0_ddr4_s_axi_arqos),
	.c0_ddr4_s_axi_arvalid(c0_ddr4_s_axi_arvalid),
	.c0_ddr4_s_axi_arready(c0_ddr4_s_axi_arready),
	.c0_ddr4_s_axi_rready(c0_ddr4_s_axi_rready),
	.c0_ddr4_s_axi_rid(c0_ddr4_s_axi_rid),
	.c0_ddr4_s_axi_rdata(c0_ddr4_s_axi_rdata),
	.c0_ddr4_s_axi_rresp(c0_ddr4_s_axi_rresp),
	.c0_ddr4_s_axi_rlast(c0_ddr4_s_axi_rlast),
	.c0_ddr4_s_axi_rvalid(c0_ddr4_s_axi_rvalid),
	.dbg_bus(dbg_bus)
);


assign sys_rst = ~rstnn_sys;
assign initialized = c0_init_calib_complete;
assign clk_dram_if = c0_ddr4_ui_clk;
assign c0_ddr4_aresetn = rstnn_dram_if;

assign c0_ddr4_s_axi_awid = $unsigned(rxawid);
assign c0_ddr4_s_axi_awaddr = $unsigned(rxawaddr);
assign c0_ddr4_s_axi_awlen = $unsigned(rxawlen);
assign c0_ddr4_s_axi_awsize = $unsigned(rxawsize);
assign c0_ddr4_s_axi_awburst = $unsigned(rxawburst);
assign c0_ddr4_s_axi_awlock = 0;
assign c0_ddr4_s_axi_awcache = 0;
assign c0_ddr4_s_axi_awprot = 0;
assign c0_ddr4_s_axi_awqos = 0;
assign c0_ddr4_s_axi_awvalid = $unsigned(rxawvalid);
assign rxawready = $unsigned(c0_ddr4_s_axi_awready);

assign c0_ddr4_s_axi_wdata = $unsigned(rxwdata);
assign c0_ddr4_s_axi_wstrb = $unsigned(rxwstrb);
assign c0_ddr4_s_axi_wlast = $unsigned(rxwlast);
assign c0_ddr4_s_axi_wvalid = $unsigned(rxwvalid);
assign rxwready = $unsigned(c0_ddr4_s_axi_wready);

assign rxbid = $unsigned(c0_ddr4_s_axi_bid);
assign rxbresp = $unsigned(c0_ddr4_s_axi_bresp);
assign rxbvalid = $unsigned(c0_ddr4_s_axi_bvalid);
assign c0_ddr4_s_axi_bready = $unsigned(rxbready);

assign c0_ddr4_s_axi_arid = $unsigned(rxarid);
assign c0_ddr4_s_axi_araddr = $unsigned(rxaraddr);
assign c0_ddr4_s_axi_arlen = $unsigned(rxarlen);
assign c0_ddr4_s_axi_arsize = $unsigned(rxarsize);
assign c0_ddr4_s_axi_arburst = $unsigned(rxarburst);
assign c0_ddr4_s_axi_arlock = 0;
assign c0_ddr4_s_axi_arcache = 0;
assign c0_ddr4_s_axi_arprot = 0;
assign c0_ddr4_s_axi_arqos = 0;
assign c0_ddr4_s_axi_arvalid = $unsigned(rxarvalid);
assign rxarready = $unsigned(c0_ddr4_s_axi_arready);

assign rxrid = $unsigned(c0_ddr4_s_axi_rid);
assign rxrdata = $unsigned(c0_ddr4_s_axi_rdata);
assign rxrresp = $unsigned(c0_ddr4_s_axi_rresp);
assign rxrlast = $unsigned(c0_ddr4_s_axi_rlast);
assign rxrvalid = $unsigned(c0_ddr4_s_axi_rvalid);
assign c0_ddr4_s_axi_rready = $unsigned(rxrready);
