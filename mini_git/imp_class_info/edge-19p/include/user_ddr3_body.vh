wire c2_ddr3_ui_clk;

wire  c0_ddr3_aresetn;
wire [15:0] c0_ddr3_s_axi_awid;
wire [29:0] c0_ddr3_s_axi_awaddr;
wire [7:0] c0_ddr3_s_axi_awlen;
wire [2:0] c0_ddr3_s_axi_awsize;
wire [1:0] c0_ddr3_s_axi_awburst;
wire [0:0] c0_ddr3_s_axi_awlock;
wire [3:0] c0_ddr3_s_axi_awcache;
wire [2:0] c0_ddr3_s_axi_awprot;
wire [3:0] c0_ddr3_s_axi_awqos;
wire  c0_ddr3_s_axi_awvalid;
wire  c0_ddr3_s_axi_awready;
wire [127:0] c0_ddr3_s_axi_wdata;
wire [15:0] c0_ddr3_s_axi_wstrb;
wire  c0_ddr3_s_axi_wlast;
wire  c0_ddr3_s_axi_wvalid;
wire  c0_ddr3_s_axi_wready;
wire  c0_ddr3_s_axi_bready;
wire [15:0] c0_ddr3_s_axi_bid;
wire [1:0] c0_ddr3_s_axi_bresp;
wire  c0_ddr3_s_axi_bvalid;
wire [15:0] c0_ddr3_s_axi_arid;
wire [29:0] c0_ddr3_s_axi_araddr;
wire [7:0] c0_ddr3_s_axi_arlen;
wire [2:0] c0_ddr3_s_axi_arsize;
wire [1:0] c0_ddr3_s_axi_arburst;
wire [0:0] c0_ddr3_s_axi_arlock;
wire [3:0] c0_ddr3_s_axi_arcache;
wire [2:0] c0_ddr3_s_axi_arprot;
wire [3:0] c0_ddr3_s_axi_arqos;
wire  c0_ddr3_s_axi_arvalid;
wire  c0_ddr3_s_axi_arready;
wire  c0_ddr3_s_axi_rready;
wire [15:0] c0_ddr3_s_axi_rid;
wire [127:0] c0_ddr3_s_axi_rdata;
wire [1:0] c0_ddr3_s_axi_rresp;
wire  c0_ddr3_s_axi_rlast;
wire  c0_ddr3_s_axi_rvalid;

xilinx_ddr3_ctrl_axi128
i_ddr3_ctrl_axi128
(
  .c0_init_calib_complete(initialized),               // output wire c0_init_calib_complete
  .dbg_clk(),                                         // output wire dbg_clk
  .dbg_bus(),                                         // output wire [511 : 0] dbg_bus

  .c0_sys_clk_p(c2_sys_clk_p),                        // input wire c0_sys_clk_p
  .c0_sys_clk_n(c2_sys_clk_n),                        // input wire c0_sys_clk_n

  .c0_ddr3_addr(c2_ddr3_addr),                        // output wire [14 : 0] c0_ddr3_addr
  .c0_ddr3_ba(c2_ddr3_ba),                            // output wire [2 : 0] c0_ddr3_ba
  .c0_ddr3_cas_n(c2_ddr3_cas_n),                      // output wire c0_ddr3_cas_n
  .c0_ddr3_cke(c2_ddr3_cke),                          // output wire [0 : 0] c0_ddr3_cke
  .c0_ddr3_ck_n(ddrx_rtl_0_ck_n),                     // output wire [0 : 0] c0_ddr3_ck_n
  .c0_ddr3_ck_p(ddrx_rtl_0_ck_p),                     // output wire [0 : 0] c0_ddr3_ck_p
  .c0_ddr3_cs_n(c2_ddr3_cs_n),                        // output wire [0 : 0] c0_ddr3_cs_n
  .c0_ddr3_dm(c2_ddr3_dm),                            // output wire [3 : 0] c0_ddr3_dm
  .c0_ddr3_dq(c2_ddr3_dq),                            // inout wire [31 : 0] c0_ddr3_dq
  .c0_ddr3_dqs_n(c2_ddr3_dqs_n),                      // inout wire [3 : 0] c0_ddr3_dqs_n
  .c0_ddr3_dqs_p(c2_ddr3_dqs_p),                      // inout wire [3 : 0] c0_ddr3_dqs_p
  .c0_ddr3_odt(c2_ddr3_odt),                          // output wire [0 : 0] c0_ddr3_odt
  .c0_ddr3_ras_n(c2_ddr3_ras_n),                      // output wire c0_ddr3_ras_n
  .c0_ddr3_reset_n(c2_ddr3_reset_n),                  // output wire c0_ddr3_reset_n
  .c0_ddr3_we_n(c2_ddr3_we_n),                        // output wire c0_ddr3_we_n

  .c0_ddr3_ui_clk(c2_ddr3_ui_clk),                    // output wire c0_ddr3_ui_clk
  .c0_ddr3_ui_clk_sync_rst(),                         // output wire c0_ddr3_ui_clk_sync_rst
  .sys_rst(~rstnn_sys),                               // input wire sys_rst

  .c0_ddr3_aresetn(c0_ddr3_aresetn),
  .c0_ddr3_s_axi_awid(c0_ddr3_s_axi_awid),
  .c0_ddr3_s_axi_awaddr(c0_ddr3_s_axi_awaddr),
  .c0_ddr3_s_axi_awlen(c0_ddr3_s_axi_awlen),
  .c0_ddr3_s_axi_awsize(c0_ddr3_s_axi_awsize),
  .c0_ddr3_s_axi_awburst(c0_ddr3_s_axi_awburst),
  .c0_ddr3_s_axi_awlock(c0_ddr3_s_axi_awlock),
  .c0_ddr3_s_axi_awcache(c0_ddr3_s_axi_awcache),
  .c0_ddr3_s_axi_awprot(c0_ddr3_s_axi_awprot),
  .c0_ddr3_s_axi_awqos(c0_ddr3_s_axi_awqos),
  .c0_ddr3_s_axi_awvalid(c0_ddr3_s_axi_awvalid),
  .c0_ddr3_s_axi_awready(c0_ddr3_s_axi_awready),
  .c0_ddr3_s_axi_wdata(c0_ddr3_s_axi_wdata),
  .c0_ddr3_s_axi_wstrb(c0_ddr3_s_axi_wstrb),
  .c0_ddr3_s_axi_wlast(c0_ddr3_s_axi_wlast),
  .c0_ddr3_s_axi_wvalid(c0_ddr3_s_axi_wvalid),
  .c0_ddr3_s_axi_wready(c0_ddr3_s_axi_wready),
  .c0_ddr3_s_axi_bready(c0_ddr3_s_axi_bready),
  .c0_ddr3_s_axi_bid(c0_ddr3_s_axi_bid),
  .c0_ddr3_s_axi_bresp(c0_ddr3_s_axi_bresp),
  .c0_ddr3_s_axi_bvalid(c0_ddr3_s_axi_bvalid),
  .c0_ddr3_s_axi_arid(c0_ddr3_s_axi_arid),
  .c0_ddr3_s_axi_araddr(c0_ddr3_s_axi_araddr),
  .c0_ddr3_s_axi_arlen(c0_ddr3_s_axi_arlen),
  .c0_ddr3_s_axi_arsize(c0_ddr3_s_axi_arsize),
  .c0_ddr3_s_axi_arburst(c0_ddr3_s_axi_arburst),
  .c0_ddr3_s_axi_arlock(c0_ddr3_s_axi_arlock),
  .c0_ddr3_s_axi_arcache(c0_ddr3_s_axi_arcache),
  .c0_ddr3_s_axi_arprot(c0_ddr3_s_axi_arprot),
  .c0_ddr3_s_axi_arqos(c0_ddr3_s_axi_arqos),
  .c0_ddr3_s_axi_arvalid(c0_ddr3_s_axi_arvalid),
  .c0_ddr3_s_axi_arready(c0_ddr3_s_axi_arready),
  .c0_ddr3_s_axi_rready(c0_ddr3_s_axi_rready),
  .c0_ddr3_s_axi_rid(c0_ddr3_s_axi_rid),
  .c0_ddr3_s_axi_rdata(c0_ddr3_s_axi_rdata),
  .c0_ddr3_s_axi_rresp(c0_ddr3_s_axi_rresp),
  .c0_ddr3_s_axi_rlast(c0_ddr3_s_axi_rlast),
  .c0_ddr3_s_axi_rvalid(c0_ddr3_s_axi_rvalid)
);

assign clk_dram_if = c2_ddr3_ui_clk;
assign c0_ddr3_aresetn = rstnn_dram_if;

assign c0_ddr3_s_axi_awid = $unsigned(rxawid);
assign c0_ddr3_s_axi_awaddr = $unsigned(rxawaddr);
assign c0_ddr3_s_axi_awlen = $unsigned(rxawlen);
assign c0_ddr3_s_axi_awsize = $unsigned(rxawsize);
assign c0_ddr3_s_axi_awburst = $unsigned(rxawburst);
assign c0_ddr3_s_axi_awlock = 0;
assign c0_ddr3_s_axi_awcache = 0;
assign c0_ddr3_s_axi_awprot = 0;
assign c0_ddr3_s_axi_awqos = 0;
assign c0_ddr3_s_axi_awvalid = $unsigned(rxawvalid);
assign rxawready = $unsigned(c0_ddr3_s_axi_awready);

assign c0_ddr3_s_axi_wdata = $unsigned(rxwdata);
assign c0_ddr3_s_axi_wstrb = $unsigned(rxwstrb);
assign c0_ddr3_s_axi_wlast = $unsigned(rxwlast);
assign c0_ddr3_s_axi_wvalid = $unsigned(rxwvalid);
assign rxwready = $unsigned(c0_ddr3_s_axi_wready);

assign rxbid = $unsigned(c0_ddr3_s_axi_bid);
assign rxbresp = $unsigned(c0_ddr3_s_axi_bresp);
assign rxbvalid = $unsigned(c0_ddr3_s_axi_bvalid);
assign c0_ddr3_s_axi_bready = $unsigned(rxbready);

assign c0_ddr3_s_axi_arid = $unsigned(rxarid);
assign c0_ddr3_s_axi_araddr = $unsigned(rxaraddr);
assign c0_ddr3_s_axi_arlen = $unsigned(rxarlen);
assign c0_ddr3_s_axi_arsize = $unsigned(rxarsize);
assign c0_ddr3_s_axi_arburst = $unsigned(rxarburst);
assign c0_ddr3_s_axi_arlock = 0;
assign c0_ddr3_s_axi_arcache = 0;
assign c0_ddr3_s_axi_arprot = 0;
assign c0_ddr3_s_axi_arqos = 0;
assign c0_ddr3_s_axi_arvalid = $unsigned(rxarvalid);
assign rxarready = $unsigned(c0_ddr3_s_axi_arready);

assign rxrid = $unsigned(c0_ddr3_s_axi_rid);
assign rxrdata = $unsigned(c0_ddr3_s_axi_rdata);
assign rxrresp = $unsigned(c0_ddr3_s_axi_rresp);
assign rxrlast = $unsigned(c0_ddr3_s_axi_rlast);
assign rxrvalid = $unsigned(c0_ddr3_s_axi_rvalid);
assign c0_ddr3_s_axi_rready = $unsigned(rxrready);
