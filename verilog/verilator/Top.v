module RegisterFile(
  input         clock,
  input         reset,
  input         io_write_enable, // @[src/main/scala/riscv/core/RegisterFile.scala 16:14]
  input  [4:0]  io_write_address, // @[src/main/scala/riscv/core/RegisterFile.scala 16:14]
  input  [31:0] io_write_data, // @[src/main/scala/riscv/core/RegisterFile.scala 16:14]
  input  [4:0]  io_read_address1, // @[src/main/scala/riscv/core/RegisterFile.scala 16:14]
  input  [4:0]  io_read_address2, // @[src/main/scala/riscv/core/RegisterFile.scala 16:14]
  output [31:0] io_read_data1, // @[src/main/scala/riscv/core/RegisterFile.scala 16:14]
  output [31:0] io_read_data2, // @[src/main/scala/riscv/core/RegisterFile.scala 16:14]
  input  [4:0]  io_debug_read_address, // @[src/main/scala/riscv/core/RegisterFile.scala 16:14]
  output [31:0] io_debug_read_data // @[src/main/scala/riscv/core/RegisterFile.scala 16:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] registers_0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_1; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_2; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_3; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_4; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_5; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_6; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_7; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_8; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_9; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_10; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_11; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_12; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_13; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_14; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_15; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_16; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_17; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_18; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_19; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_20; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_21; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_22; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_23; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_24; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_25; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_26; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_27; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_28; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_29; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_30; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  reg [31:0] registers_31; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
  wire  _io_read_data1_T = io_read_address1 == 5'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 38:22]
  wire [31:0] _GEN_97 = 5'h1 == io_read_address1 ? registers_1 : registers_0; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_98 = 5'h2 == io_read_address1 ? registers_2 : _GEN_97; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_99 = 5'h3 == io_read_address1 ? registers_3 : _GEN_98; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_100 = 5'h4 == io_read_address1 ? registers_4 : _GEN_99; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_101 = 5'h5 == io_read_address1 ? registers_5 : _GEN_100; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_102 = 5'h6 == io_read_address1 ? registers_6 : _GEN_101; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_103 = 5'h7 == io_read_address1 ? registers_7 : _GEN_102; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_104 = 5'h8 == io_read_address1 ? registers_8 : _GEN_103; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_105 = 5'h9 == io_read_address1 ? registers_9 : _GEN_104; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_106 = 5'ha == io_read_address1 ? registers_10 : _GEN_105; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_107 = 5'hb == io_read_address1 ? registers_11 : _GEN_106; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_108 = 5'hc == io_read_address1 ? registers_12 : _GEN_107; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_109 = 5'hd == io_read_address1 ? registers_13 : _GEN_108; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_110 = 5'he == io_read_address1 ? registers_14 : _GEN_109; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_111 = 5'hf == io_read_address1 ? registers_15 : _GEN_110; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_112 = 5'h10 == io_read_address1 ? registers_16 : _GEN_111; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_113 = 5'h11 == io_read_address1 ? registers_17 : _GEN_112; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_114 = 5'h12 == io_read_address1 ? registers_18 : _GEN_113; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_115 = 5'h13 == io_read_address1 ? registers_19 : _GEN_114; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_116 = 5'h14 == io_read_address1 ? registers_20 : _GEN_115; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_117 = 5'h15 == io_read_address1 ? registers_21 : _GEN_116; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_118 = 5'h16 == io_read_address1 ? registers_22 : _GEN_117; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_119 = 5'h17 == io_read_address1 ? registers_23 : _GEN_118; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_120 = 5'h18 == io_read_address1 ? registers_24 : _GEN_119; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_121 = 5'h19 == io_read_address1 ? registers_25 : _GEN_120; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_122 = 5'h1a == io_read_address1 ? registers_26 : _GEN_121; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_123 = 5'h1b == io_read_address1 ? registers_27 : _GEN_122; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_124 = 5'h1c == io_read_address1 ? registers_28 : _GEN_123; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_125 = 5'h1d == io_read_address1 ? registers_29 : _GEN_124; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_126 = 5'h1e == io_read_address1 ? registers_30 : _GEN_125; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire [31:0] _GEN_127 = 5'h1f == io_read_address1 ? registers_31 : _GEN_126; // @[src/main/scala/riscv/core/RegisterFile.scala 37:{23,23}]
  wire  _io_read_data2_T = io_read_address2 == 5'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 44:22]
  wire [31:0] _GEN_129 = 5'h1 == io_read_address2 ? registers_1 : registers_0; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_130 = 5'h2 == io_read_address2 ? registers_2 : _GEN_129; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_131 = 5'h3 == io_read_address2 ? registers_3 : _GEN_130; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_132 = 5'h4 == io_read_address2 ? registers_4 : _GEN_131; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_133 = 5'h5 == io_read_address2 ? registers_5 : _GEN_132; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_134 = 5'h6 == io_read_address2 ? registers_6 : _GEN_133; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_135 = 5'h7 == io_read_address2 ? registers_7 : _GEN_134; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_136 = 5'h8 == io_read_address2 ? registers_8 : _GEN_135; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_137 = 5'h9 == io_read_address2 ? registers_9 : _GEN_136; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_138 = 5'ha == io_read_address2 ? registers_10 : _GEN_137; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_139 = 5'hb == io_read_address2 ? registers_11 : _GEN_138; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_140 = 5'hc == io_read_address2 ? registers_12 : _GEN_139; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_141 = 5'hd == io_read_address2 ? registers_13 : _GEN_140; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_142 = 5'he == io_read_address2 ? registers_14 : _GEN_141; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_143 = 5'hf == io_read_address2 ? registers_15 : _GEN_142; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_144 = 5'h10 == io_read_address2 ? registers_16 : _GEN_143; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_145 = 5'h11 == io_read_address2 ? registers_17 : _GEN_144; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_146 = 5'h12 == io_read_address2 ? registers_18 : _GEN_145; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_147 = 5'h13 == io_read_address2 ? registers_19 : _GEN_146; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_148 = 5'h14 == io_read_address2 ? registers_20 : _GEN_147; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_149 = 5'h15 == io_read_address2 ? registers_21 : _GEN_148; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_150 = 5'h16 == io_read_address2 ? registers_22 : _GEN_149; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_151 = 5'h17 == io_read_address2 ? registers_23 : _GEN_150; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_152 = 5'h18 == io_read_address2 ? registers_24 : _GEN_151; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_153 = 5'h19 == io_read_address2 ? registers_25 : _GEN_152; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_154 = 5'h1a == io_read_address2 ? registers_26 : _GEN_153; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_155 = 5'h1b == io_read_address2 ? registers_27 : _GEN_154; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_156 = 5'h1c == io_read_address2 ? registers_28 : _GEN_155; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_157 = 5'h1d == io_read_address2 ? registers_29 : _GEN_156; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_158 = 5'h1e == io_read_address2 ? registers_30 : _GEN_157; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire [31:0] _GEN_159 = 5'h1f == io_read_address2 ? registers_31 : _GEN_158; // @[src/main/scala/riscv/core/RegisterFile.scala 43:{23,23}]
  wire  _io_debug_read_data_T = io_debug_read_address == 5'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 50:27]
  wire [31:0] _GEN_161 = 5'h1 == io_debug_read_address ? registers_1 : registers_0; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_162 = 5'h2 == io_debug_read_address ? registers_2 : _GEN_161; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_163 = 5'h3 == io_debug_read_address ? registers_3 : _GEN_162; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_164 = 5'h4 == io_debug_read_address ? registers_4 : _GEN_163; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_165 = 5'h5 == io_debug_read_address ? registers_5 : _GEN_164; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_166 = 5'h6 == io_debug_read_address ? registers_6 : _GEN_165; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_167 = 5'h7 == io_debug_read_address ? registers_7 : _GEN_166; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_168 = 5'h8 == io_debug_read_address ? registers_8 : _GEN_167; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_169 = 5'h9 == io_debug_read_address ? registers_9 : _GEN_168; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_170 = 5'ha == io_debug_read_address ? registers_10 : _GEN_169; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_171 = 5'hb == io_debug_read_address ? registers_11 : _GEN_170; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_172 = 5'hc == io_debug_read_address ? registers_12 : _GEN_171; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_173 = 5'hd == io_debug_read_address ? registers_13 : _GEN_172; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_174 = 5'he == io_debug_read_address ? registers_14 : _GEN_173; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_175 = 5'hf == io_debug_read_address ? registers_15 : _GEN_174; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_176 = 5'h10 == io_debug_read_address ? registers_16 : _GEN_175; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_177 = 5'h11 == io_debug_read_address ? registers_17 : _GEN_176; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_178 = 5'h12 == io_debug_read_address ? registers_18 : _GEN_177; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_179 = 5'h13 == io_debug_read_address ? registers_19 : _GEN_178; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_180 = 5'h14 == io_debug_read_address ? registers_20 : _GEN_179; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_181 = 5'h15 == io_debug_read_address ? registers_21 : _GEN_180; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_182 = 5'h16 == io_debug_read_address ? registers_22 : _GEN_181; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_183 = 5'h17 == io_debug_read_address ? registers_23 : _GEN_182; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_184 = 5'h18 == io_debug_read_address ? registers_24 : _GEN_183; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_185 = 5'h19 == io_debug_read_address ? registers_25 : _GEN_184; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_186 = 5'h1a == io_debug_read_address ? registers_26 : _GEN_185; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_187 = 5'h1b == io_debug_read_address ? registers_27 : _GEN_186; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_188 = 5'h1c == io_debug_read_address ? registers_28 : _GEN_187; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_189 = 5'h1d == io_debug_read_address ? registers_29 : _GEN_188; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_190 = 5'h1e == io_debug_read_address ? registers_30 : _GEN_189; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  wire [31:0] _GEN_191 = 5'h1f == io_debug_read_address ? registers_31 : _GEN_190; // @[src/main/scala/riscv/core/RegisterFile.scala 49:{28,28}]
  assign io_read_data1 = _io_read_data1_T ? 32'h0 : _GEN_127; // @[src/main/scala/riscv/core/RegisterFile.scala 37:23]
  assign io_read_data2 = _io_read_data2_T ? 32'h0 : _GEN_159; // @[src/main/scala/riscv/core/RegisterFile.scala 43:23]
  assign io_debug_read_data = _io_debug_read_data_T ? 32'h0 : _GEN_191; // @[src/main/scala/riscv/core/RegisterFile.scala 49:28]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_0 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h0 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_0 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_1 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h1 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_1 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_2 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h2 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_2 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_3 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h3 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_3 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_4 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h4 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_4 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_5 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h5 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_5 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_6 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h6 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_6 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_7 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h7 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_7 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_8 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h8 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_8 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_9 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h9 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_9 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_10 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'ha == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_10 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_11 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'hb == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_11 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_12 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'hc == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_12 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_13 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'hd == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_13 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_14 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'he == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_14 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_15 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'hf == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_15 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_16 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h10 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_16 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_17 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h11 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_17 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_18 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h12 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_18 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_19 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h13 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_19 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_20 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h14 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_20 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_21 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h15 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_21 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_22 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h16 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_22 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_23 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h17 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_23 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_24 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h18 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_24 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_25 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h19 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_25 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_26 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h1a == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_26 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_27 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h1b == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_27 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_28 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h1c == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_28 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_29 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h1d == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_29 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_30 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h1e == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_30 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
      registers_31 <= 32'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 29:26]
    end else if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 32:55]
        if (5'h1f == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
          registers_31 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 33:35]
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  registers_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  registers_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  registers_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  registers_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  registers_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  registers_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  registers_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  registers_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  registers_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  registers_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  registers_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  registers_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  registers_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  registers_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  registers_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  registers_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  registers_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  registers_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  registers_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  registers_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  registers_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  registers_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  registers_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  registers_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  registers_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  registers_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  registers_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  registers_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  registers_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  registers_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  registers_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  registers_31 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InstructionFetch(
  input         clock,
  input         reset,
  input         io_jump_flag_id, // @[src/main/scala/riscv/core/InstructionFetch.scala 14:14]
  input  [31:0] io_jump_address_id, // @[src/main/scala/riscv/core/InstructionFetch.scala 14:14]
  input  [31:0] io_instruction_read_data, // @[src/main/scala/riscv/core/InstructionFetch.scala 14:14]
  input         io_instruction_valid, // @[src/main/scala/riscv/core/InstructionFetch.scala 14:14]
  output [31:0] io_instruction_address, // @[src/main/scala/riscv/core/InstructionFetch.scala 14:14]
  output [31:0] io_instruction // @[src/main/scala/riscv/core/InstructionFetch.scala 14:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] pc; // @[src/main/scala/riscv/core/InstructionFetch.scala 23:19]
  wire [31:0] _pc_T_1 = pc + 32'h4; // @[src/main/scala/riscv/core/InstructionFetch.scala 31:16]
  assign io_instruction_address = pc; // @[src/main/scala/riscv/core/InstructionFetch.scala 39:26]
  assign io_instruction = io_instruction_valid ? io_instruction_read_data : 32'h13; // @[src/main/scala/riscv/core/InstructionFetch.scala 25:30 26:20 37:20]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/InstructionFetch.scala 23:19]
      pc <= 32'h1000; // @[src/main/scala/riscv/core/InstructionFetch.scala 23:19]
    end else if (io_instruction_valid) begin // @[src/main/scala/riscv/core/InstructionFetch.scala 25:30]
      if (io_jump_flag_id) begin // @[src/main/scala/riscv/core/InstructionFetch.scala 28:27]
        pc <= io_jump_address_id; // @[src/main/scala/riscv/core/InstructionFetch.scala 29:10]
      end else begin
        pc <= _pc_T_1; // @[src/main/scala/riscv/core/InstructionFetch.scala 31:10]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InstructionDecode(
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
  output [4:0]  io_regs_reg1_read_address, // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
  output [4:0]  io_regs_reg2_read_address, // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
  output [31:0] io_ex_immediate, // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
  output        io_ex_aluop1_source, // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
  output        io_ex_aluop2_source, // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
  output        io_memory_read_enable, // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
  output        io_memory_write_enable, // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
  output [1:0]  io_wb_reg_write_source, // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
  output        io_reg_write_enable, // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
  output [4:0]  io_reg_write_address // @[src/main/scala/riscv/core/InstructionDecode.scala 127:14]
);
  wire [6:0] opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/InstructionDecode.scala 145:30]
  wire [4:0] rd = io_instruction[11:7]; // @[src/main/scala/riscv/core/InstructionDecode.scala 148:30]
  wire [4:0] rs1 = io_instruction[19:15]; // @[src/main/scala/riscv/core/InstructionDecode.scala 149:30]
  wire [4:0] rs2 = io_instruction[24:20]; // @[src/main/scala/riscv/core/InstructionDecode.scala 150:30]
  wire  _io_reg_write_enable_T = opcode == 7'h33; // @[src/main/scala/riscv/core/InstructionDecode.scala 180:36]
  wire  _io_reg_write_enable_T_2 = opcode == 7'h33 | opcode == 7'h13; // @[src/main/scala/riscv/core/InstructionDecode.scala 180:61]
  wire  _io_reg_write_enable_T_3 = opcode == 7'h3; // @[src/main/scala/riscv/core/InstructionDecode.scala 181:15]
  wire  _io_reg_write_enable_T_4 = opcode == 7'h33 | opcode == 7'h13 | _io_reg_write_enable_T_3; // @[src/main/scala/riscv/core/InstructionDecode.scala 180:96]
  wire  _io_reg_write_enable_T_5 = opcode == 7'h17; // @[src/main/scala/riscv/core/InstructionDecode.scala 181:50]
  wire  _io_reg_write_enable_T_7 = opcode == 7'h37; // @[src/main/scala/riscv/core/InstructionDecode.scala 181:85]
  wire  _io_reg_write_enable_T_9 = opcode == 7'h6f; // @[src/main/scala/riscv/core/InstructionDecode.scala 182:15]
  wire  _io_reg_write_enable_T_10 = _io_reg_write_enable_T_4 | opcode == 7'h17 | opcode == 7'h37 |
    _io_reg_write_enable_T_9; // @[src/main/scala/riscv/core/InstructionDecode.scala 181:107]
  wire  _io_reg_write_enable_T_11 = opcode == 7'h67; // @[src/main/scala/riscv/core/InstructionDecode.scala 182:48]
  wire [19:0] _immediate_T_2 = io_instruction[31] ? 20'hfffff : 20'h0; // @[src/main/scala/riscv/core/InstructionDecode.scala 190:13]
  wire [31:0] _immediate_T_4 = {_immediate_T_2,io_instruction[31:20]}; // @[src/main/scala/riscv/core/InstructionDecode.scala 190:8]
  wire [20:0] _immediate_T_7 = io_instruction[31] ? 21'h1fffff : 21'h0; // @[src/main/scala/riscv/core/InstructionDecode.scala 192:37]
  wire [31:0] _immediate_T_9 = {_immediate_T_7,io_instruction[30:20]}; // @[src/main/scala/riscv/core/InstructionDecode.scala 192:32]
  wire [31:0] _immediate_T_25 = {_immediate_T_7,io_instruction[30:25],rd}; // @[src/main/scala/riscv/core/InstructionDecode.scala 195:32]
  wire [31:0] _immediate_T_32 = {_immediate_T_2,io_instruction[7],io_instruction[30:25],io_instruction[11:8],1'h0}; // @[src/main/scala/riscv/core/InstructionDecode.scala 196:32]
  wire [31:0] _immediate_T_34 = {io_instruction[31:12],12'h0}; // @[src/main/scala/riscv/core/InstructionDecode.scala 203:32]
  wire [11:0] _immediate_T_39 = io_instruction[31] ? 12'hfff : 12'h0; // @[src/main/scala/riscv/core/InstructionDecode.scala 207:13]
  wire [31:0] _immediate_T_43 = {_immediate_T_39,io_instruction[19:12],io_instruction[20],io_instruction[30:21],1'h0}; // @[src/main/scala/riscv/core/InstructionDecode.scala 206:30]
  wire [31:0] _immediate_T_45 = 7'h13 == opcode ? _immediate_T_9 : _immediate_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_47 = 7'h3 == opcode ? _immediate_T_9 : _immediate_T_45; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_49 = 7'h67 == opcode ? _immediate_T_9 : _immediate_T_47; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_51 = 7'h23 == opcode ? _immediate_T_25 : _immediate_T_49; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_53 = 7'h63 == opcode ? _immediate_T_32 : _immediate_T_51; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_55 = 7'h37 == opcode ? _immediate_T_34 : _immediate_T_53; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _immediate_T_57 = 7'h17 == opcode ? _immediate_T_34 : _immediate_T_55; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_ex_aluop1_source_T_1 = opcode == 7'h63; // @[src/main/scala/riscv/core/InstructionDecode.scala 217:45]
  wire  _io_memory_write_enable_T = opcode == 7'h23; // @[src/main/scala/riscv/core/InstructionDecode.scala 237:36]
  wire  _io_regs_reg1_read_address_T_6 = _io_reg_write_enable_T_2 | _io_ex_aluop1_source_T_1; // @[src/main/scala/riscv/core/InstructionDecode.scala 241:70]
  wire  _io_regs_reg1_read_address_T_11 = _io_memory_write_enable_T | _io_reg_write_enable_T_11 |
    _io_reg_write_enable_T_3; // @[src/main/scala/riscv/core/InstructionDecode.scala 242:68]
  wire [4:0] _io_regs_reg1_read_address_T_12 = _io_regs_reg1_read_address_T_11 ? rs1 : 5'h0; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire  _io_wb_reg_write_source_T_4 = _io_reg_write_enable_T_2 | _io_reg_write_enable_T_7; // @[src/main/scala/riscv/core/InstructionDecode.scala 251:72]
  wire  _io_wb_reg_write_source_T_6 = _io_wb_reg_write_source_T_4 | _io_reg_write_enable_T_5; // @[src/main/scala/riscv/core/InstructionDecode.scala 252:37]
  wire  _io_wb_reg_write_source_T_10 = _io_reg_write_enable_T_9 | _io_reg_write_enable_T_11; // @[src/main/scala/riscv/core/InstructionDecode.scala 254:36]
  wire [1:0] _io_wb_reg_write_source_T_11 = _io_wb_reg_write_source_T_10 ? 2'h3 : 2'h0; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _io_wb_reg_write_source_T_12 = _io_reg_write_enable_T_3 ? 2'h1 : _io_wb_reg_write_source_T_11; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  assign io_regs_reg1_read_address = _io_regs_reg1_read_address_T_6 ? rs1 : _io_regs_reg1_read_address_T_12; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  assign io_regs_reg2_read_address = _io_reg_write_enable_T | _io_memory_write_enable_T | _io_ex_aluop1_source_T_1 ? rs2
     : 5'h0; // @[src/main/scala/riscv/core/InstructionDecode.scala 244:35]
  assign io_ex_immediate = 7'h6f == opcode ? _immediate_T_43 : _immediate_T_57; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_ex_aluop1_source = _io_reg_write_enable_T_5 | opcode == 7'h63 | _io_reg_write_enable_T_9; // @[src/main/scala/riscv/core/InstructionDecode.scala 217:68]
  assign io_ex_aluop2_source = _io_reg_write_enable_T ? 1'h0 : 1'h1; // @[src/main/scala/riscv/core/InstructionDecode.scala 229:29]
  assign io_memory_read_enable = opcode == 7'h3; // @[src/main/scala/riscv/core/InstructionDecode.scala 236:35]
  assign io_memory_write_enable = opcode == 7'h23; // @[src/main/scala/riscv/core/InstructionDecode.scala 237:36]
  assign io_wb_reg_write_source = _io_wb_reg_write_source_T_6 ? 2'h0 : _io_wb_reg_write_source_T_12; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  assign io_reg_write_enable = _io_reg_write_enable_T_10 | _io_reg_write_enable_T_11; // @[src/main/scala/riscv/core/InstructionDecode.scala 260:35]
  assign io_reg_write_address = io_instruction[11:7]; // @[src/main/scala/riscv/core/InstructionDecode.scala 148:30]
endmodule
module ALU(
  input  [4:0]  io_func, // @[src/main/scala/riscv/core/ALU.scala 16:14]
  input  [31:0] io_op1, // @[src/main/scala/riscv/core/ALU.scala 16:14]
  input  [31:0] io_op2, // @[src/main/scala/riscv/core/ALU.scala 16:14]
  output [31:0] io_result // @[src/main/scala/riscv/core/ALU.scala 16:14]
);
  wire [31:0] _io_result_T_1 = io_op1 + io_op2; // @[src/main/scala/riscv/core/ALU.scala 29:27]
  wire [31:0] _io_result_T_3 = io_op1 - io_op2; // @[src/main/scala/riscv/core/ALU.scala 32:27]
  wire [62:0] _GEN_18 = {{31'd0}, io_op1}; // @[src/main/scala/riscv/core/ALU.scala 35:27]
  wire [62:0] _io_result_T_5 = _GEN_18 << io_op2[4:0]; // @[src/main/scala/riscv/core/ALU.scala 35:27]
  wire [31:0] _io_result_T_6 = io_op1; // @[src/main/scala/riscv/core/ALU.scala 38:27]
  wire [31:0] _io_result_T_7 = io_op2; // @[src/main/scala/riscv/core/ALU.scala 38:43]
  wire [31:0] _io_result_T_9 = io_op1 ^ io_op2; // @[src/main/scala/riscv/core/ALU.scala 41:27]
  wire [31:0] _io_result_T_10 = io_op1 | io_op2; // @[src/main/scala/riscv/core/ALU.scala 44:27]
  wire [31:0] _io_result_T_11 = io_op1 & io_op2; // @[src/main/scala/riscv/core/ALU.scala 47:27]
  wire [31:0] _io_result_T_13 = io_op1 >> io_op2[4:0]; // @[src/main/scala/riscv/core/ALU.scala 50:27]
  wire [31:0] _io_result_T_17 = $signed(io_op1) >>> io_op2[4:0]; // @[src/main/scala/riscv/core/ALU.scala 53:52]
  wire [31:0] _io_result_T_19 = ~io_op2; // @[src/main/scala/riscv/core/ALU.scala 60:29]
  wire [31:0] _io_result_T_20 = io_op1 & _io_result_T_19; // @[src/main/scala/riscv/core/ALU.scala 60:27]
  wire [31:0] _io_result_T_22 = io_op1 | _io_result_T_19; // @[src/main/scala/riscv/core/ALU.scala 63:27]
  wire [31:0] _io_result_T_24 = ~_io_result_T_9; // @[src/main/scala/riscv/core/ALU.scala 66:20]
  wire [5:0] _GEN_16 = {{1'd0}, io_op2[4:0]}; // @[src/main/scala/riscv/core/ALU.scala 76:66]
  wire [5:0] _io_result_T_29 = 6'h20 - _GEN_16; // @[src/main/scala/riscv/core/ALU.scala 76:66]
  wire [31:0] _io_result_T_30 = io_op1 >> _io_result_T_29; // @[src/main/scala/riscv/core/ALU.scala 76:54]
  wire [62:0] _GEN_17 = {{31'd0}, _io_result_T_30}; // @[src/main/scala/riscv/core/ALU.scala 76:44]
  wire [62:0] _io_result_T_31 = _io_result_T_5 | _GEN_17; // @[src/main/scala/riscv/core/ALU.scala 76:44]
  wire [94:0] _GEN_20 = {{63'd0}, io_op1}; // @[src/main/scala/riscv/core/ALU.scala 82:54]
  wire [94:0] _io_result_T_35 = _GEN_20 << _io_result_T_29; // @[src/main/scala/riscv/core/ALU.scala 82:54]
  wire [94:0] _GEN_19 = {{63'd0}, _io_result_T_13}; // @[src/main/scala/riscv/core/ALU.scala 82:44]
  wire [94:0] _io_result_T_36 = _GEN_19 | _io_result_T_35; // @[src/main/scala/riscv/core/ALU.scala 82:44]
  wire [94:0] _GEN_0 = 5'h10 == io_func ? _io_result_T_36 : 95'h0; // @[src/main/scala/riscv/core/ALU.scala 25:13 27:19 82:17]
  wire [94:0] _GEN_1 = 5'hf == io_func ? {{32'd0}, _io_result_T_31} : _GEN_0; // @[src/main/scala/riscv/core/ALU.scala 27:19 76:17]
  wire [94:0] _GEN_2 = 5'he == io_func ? {{32'd0}, _io_result_T_5} : _GEN_1; // @[src/main/scala/riscv/core/ALU.scala 27:19 70:17]
  wire [94:0] _GEN_3 = 5'hd == io_func ? {{63'd0}, _io_result_T_24} : _GEN_2; // @[src/main/scala/riscv/core/ALU.scala 27:19 66:17]
  wire [94:0] _GEN_4 = 5'hc == io_func ? {{63'd0}, _io_result_T_22} : _GEN_3; // @[src/main/scala/riscv/core/ALU.scala 27:19 63:17]
  wire [94:0] _GEN_5 = 5'hb == io_func ? {{63'd0}, _io_result_T_20} : _GEN_4; // @[src/main/scala/riscv/core/ALU.scala 27:19 60:17]
  wire [94:0] _GEN_6 = 5'ha == io_func ? {{94'd0}, io_op1 < io_op2} : _GEN_5; // @[src/main/scala/riscv/core/ALU.scala 27:19 56:17]
  wire [94:0] _GEN_7 = 5'h9 == io_func ? {{63'd0}, _io_result_T_17} : _GEN_6; // @[src/main/scala/riscv/core/ALU.scala 27:19 53:17]
  wire [94:0] _GEN_8 = 5'h8 == io_func ? {{63'd0}, _io_result_T_13} : _GEN_7; // @[src/main/scala/riscv/core/ALU.scala 27:19 50:17]
  wire [94:0] _GEN_9 = 5'h7 == io_func ? {{63'd0}, _io_result_T_11} : _GEN_8; // @[src/main/scala/riscv/core/ALU.scala 27:19 47:17]
  wire [94:0] _GEN_10 = 5'h6 == io_func ? {{63'd0}, _io_result_T_10} : _GEN_9; // @[src/main/scala/riscv/core/ALU.scala 27:19 44:17]
  wire [94:0] _GEN_11 = 5'h5 == io_func ? {{63'd0}, _io_result_T_9} : _GEN_10; // @[src/main/scala/riscv/core/ALU.scala 27:19 41:17]
  wire [94:0] _GEN_12 = 5'h4 == io_func ? {{94'd0}, $signed(_io_result_T_6) < $signed(_io_result_T_7)} : _GEN_11; // @[src/main/scala/riscv/core/ALU.scala 27:19 38:17]
  wire [94:0] _GEN_13 = 5'h3 == io_func ? {{32'd0}, _io_result_T_5} : _GEN_12; // @[src/main/scala/riscv/core/ALU.scala 27:19 35:17]
  wire [94:0] _GEN_14 = 5'h2 == io_func ? {{63'd0}, _io_result_T_3} : _GEN_13; // @[src/main/scala/riscv/core/ALU.scala 27:19 32:17]
  wire [94:0] _GEN_15 = 5'h1 == io_func ? {{63'd0}, _io_result_T_1} : _GEN_14; // @[src/main/scala/riscv/core/ALU.scala 27:19 29:17]
  assign io_result = _GEN_15[31:0];
endmodule
module ALUControl(
  input  [6:0] io_opcode, // @[src/main/scala/riscv/core/ALUControl.scala 10:14]
  input  [2:0] io_funct3, // @[src/main/scala/riscv/core/ALUControl.scala 10:14]
  input  [6:0] io_funct7, // @[src/main/scala/riscv/core/ALUControl.scala 10:14]
  output [4:0] io_alu_funct // @[src/main/scala/riscv/core/ALUControl.scala 10:14]
);
  wire [3:0] _io_alu_funct_T_1 = io_funct7[5] ? 4'h9 : 4'h8; // @[src/main/scala/riscv/core/ALUControl.scala 33:41]
  wire [1:0] _io_alu_funct_T_3 = 3'h1 == io_funct3 ? 2'h3 : 2'h1; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [2:0] _io_alu_funct_T_5 = 3'h2 == io_funct3 ? 3'h4 : {{1'd0}, _io_alu_funct_T_3}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_7 = 3'h3 == io_funct3 ? 4'ha : {{1'd0}, _io_alu_funct_T_5}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_9 = 3'h4 == io_funct3 ? 4'h5 : _io_alu_funct_T_7; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_11 = 3'h6 == io_funct3 ? 4'h6 : _io_alu_funct_T_9; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_13 = 3'h7 == io_funct3 ? 4'h7 : _io_alu_funct_T_11; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_15 = 3'h5 == io_funct3 ? _io_alu_funct_T_1 : _io_alu_funct_T_13; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_alu_funct_T_17 = io_funct7[5] ? 2'h2 : 2'h1; // @[src/main/scala/riscv/core/ALUControl.scala 42:43]
  wire [1:0] _io_alu_funct_T_21 = 3'h1 == io_funct3 ? 2'h3 : _io_alu_funct_T_17; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [2:0] _io_alu_funct_T_23 = 3'h2 == io_funct3 ? 3'h4 : {{1'd0}, _io_alu_funct_T_21}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_25 = 3'h3 == io_funct3 ? 4'ha : {{1'd0}, _io_alu_funct_T_23}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_27 = 3'h4 == io_funct3 ? 4'h5 : _io_alu_funct_T_25; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_29 = 3'h6 == io_funct3 ? 4'h6 : _io_alu_funct_T_27; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_31 = 3'h7 == io_funct3 ? 4'h7 : _io_alu_funct_T_29; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_33 = 3'h5 == io_funct3 ? _io_alu_funct_T_1 : _io_alu_funct_T_31; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _GEN_1 = 7'h37 == io_opcode | 7'h17 == io_opcode; // @[src/main/scala/riscv/core/ALUControl.scala 20:21 69:20]
  wire  _GEN_2 = 7'h67 == io_opcode | _GEN_1; // @[src/main/scala/riscv/core/ALUControl.scala 20:21 66:20]
  wire  _GEN_3 = 7'h6f == io_opcode | _GEN_2; // @[src/main/scala/riscv/core/ALUControl.scala 20:21 63:20]
  wire  _GEN_4 = 7'h23 == io_opcode | _GEN_3; // @[src/main/scala/riscv/core/ALUControl.scala 20:21 60:20]
  wire  _GEN_5 = 7'h3 == io_opcode | _GEN_4; // @[src/main/scala/riscv/core/ALUControl.scala 20:21 57:20]
  wire  _GEN_6 = 7'h63 == io_opcode | _GEN_5; // @[src/main/scala/riscv/core/ALUControl.scala 20:21 54:20]
  wire [3:0] _GEN_7 = 7'h33 == io_opcode ? _io_alu_funct_T_33 : {{3'd0}, _GEN_6}; // @[src/main/scala/riscv/core/ALUControl.scala 20:21 38:20]
  wire [3:0] _GEN_8 = 7'h13 == io_opcode ? _io_alu_funct_T_15 : _GEN_7; // @[src/main/scala/riscv/core/ALUControl.scala 20:21 22:20]
  assign io_alu_funct = {{1'd0}, _GEN_8};
endmodule
module Execute(
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/Execute.scala 12:14]
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/Execute.scala 12:14]
  input  [31:0] io_reg1_data, // @[src/main/scala/riscv/core/Execute.scala 12:14]
  input  [31:0] io_reg2_data, // @[src/main/scala/riscv/core/Execute.scala 12:14]
  input  [31:0] io_immediate, // @[src/main/scala/riscv/core/Execute.scala 12:14]
  input         io_aluop1_source, // @[src/main/scala/riscv/core/Execute.scala 12:14]
  input         io_aluop2_source, // @[src/main/scala/riscv/core/Execute.scala 12:14]
  output [31:0] io_mem_alu_result, // @[src/main/scala/riscv/core/Execute.scala 12:14]
  output        io_if_jump_flag, // @[src/main/scala/riscv/core/Execute.scala 12:14]
  output [31:0] io_if_jump_address // @[src/main/scala/riscv/core/Execute.scala 12:14]
);
  wire [4:0] alu_io_func; // @[src/main/scala/riscv/core/Execute.scala 32:24]
  wire [31:0] alu_io_op1; // @[src/main/scala/riscv/core/Execute.scala 32:24]
  wire [31:0] alu_io_op2; // @[src/main/scala/riscv/core/Execute.scala 32:24]
  wire [31:0] alu_io_result; // @[src/main/scala/riscv/core/Execute.scala 32:24]
  wire [6:0] alu_ctrl_io_opcode; // @[src/main/scala/riscv/core/Execute.scala 33:24]
  wire [2:0] alu_ctrl_io_funct3; // @[src/main/scala/riscv/core/Execute.scala 33:24]
  wire [6:0] alu_ctrl_io_funct7; // @[src/main/scala/riscv/core/Execute.scala 33:24]
  wire [4:0] alu_ctrl_io_alu_funct; // @[src/main/scala/riscv/core/Execute.scala 33:24]
  wire [6:0] opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/Execute.scala 26:30]
  wire [2:0] funct3 = io_instruction[14:12]; // @[src/main/scala/riscv/core/Execute.scala 27:30]
  wire  _io_if_jump_flag_T_1 = opcode == 7'h67; // @[src/main/scala/riscv/core/Execute.scala 50:13]
  wire  _io_if_jump_flag_T_2 = opcode == 7'h6f | _io_if_jump_flag_T_1; // @[src/main/scala/riscv/core/Execute.scala 49:50]
  wire  _io_if_jump_flag_T_4 = io_reg1_data == io_reg2_data; // @[src/main/scala/riscv/core/Execute.scala 55:49]
  wire  _io_if_jump_flag_T_5 = io_reg1_data != io_reg2_data; // @[src/main/scala/riscv/core/Execute.scala 56:49]
  wire  _io_if_jump_flag_T_8 = $signed(io_reg1_data) < $signed(io_reg2_data); // @[src/main/scala/riscv/core/Execute.scala 57:56]
  wire  _io_if_jump_flag_T_11 = $signed(io_reg1_data) >= $signed(io_reg2_data); // @[src/main/scala/riscv/core/Execute.scala 58:56]
  wire  _io_if_jump_flag_T_12 = io_reg1_data < io_reg2_data; // @[src/main/scala/riscv/core/Execute.scala 59:56]
  wire  _io_if_jump_flag_T_13 = io_reg1_data >= io_reg2_data; // @[src/main/scala/riscv/core/Execute.scala 60:56]
  wire  _io_if_jump_flag_T_17 = 3'h1 == funct3 ? _io_if_jump_flag_T_5 : 3'h0 == funct3 & _io_if_jump_flag_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_if_jump_flag_T_19 = 3'h4 == funct3 ? _io_if_jump_flag_T_8 : _io_if_jump_flag_T_17; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_if_jump_flag_T_21 = 3'h5 == funct3 ? _io_if_jump_flag_T_11 : _io_if_jump_flag_T_19; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_if_jump_flag_T_23 = 3'h6 == funct3 ? _io_if_jump_flag_T_12 : _io_if_jump_flag_T_21; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_if_jump_flag_T_25 = 3'h7 == funct3 ? _io_if_jump_flag_T_13 : _io_if_jump_flag_T_23; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_if_jump_flag_T_26 = opcode == 7'h63 & _io_if_jump_flag_T_25; // @[src/main/scala/riscv/core/Execute.scala 51:37]
  wire [31:0] _io_if_jump_address_T_1 = _io_if_jump_flag_T_1 ? io_reg1_data : io_instruction_address; // @[src/main/scala/riscv/core/Execute.scala 63:43]
  ALU alu ( // @[src/main/scala/riscv/core/Execute.scala 32:24]
    .io_func(alu_io_func),
    .io_op1(alu_io_op1),
    .io_op2(alu_io_op2),
    .io_result(alu_io_result)
  );
  ALUControl alu_ctrl ( // @[src/main/scala/riscv/core/Execute.scala 33:24]
    .io_opcode(alu_ctrl_io_opcode),
    .io_funct3(alu_ctrl_io_funct3),
    .io_funct7(alu_ctrl_io_funct7),
    .io_alu_funct(alu_ctrl_io_alu_funct)
  );
  assign io_mem_alu_result = alu_io_result; // @[src/main/scala/riscv/core/Execute.scala 48:21]
  assign io_if_jump_flag = _io_if_jump_flag_T_2 | _io_if_jump_flag_T_26; // @[src/main/scala/riscv/core/Execute.scala 50:36]
  assign io_if_jump_address = io_immediate + _io_if_jump_address_T_1; // @[src/main/scala/riscv/core/Execute.scala 63:38]
  assign alu_io_func = alu_ctrl_io_alu_funct; // @[src/main/scala/riscv/core/Execute.scala 45:15]
  assign alu_io_op1 = io_aluop1_source ? io_instruction_address : io_reg1_data; // @[src/main/scala/riscv/core/Execute.scala 41:20]
  assign alu_io_op2 = io_aluop2_source ? io_immediate : io_reg2_data; // @[src/main/scala/riscv/core/Execute.scala 42:20]
  assign alu_ctrl_io_opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/Execute.scala 26:30]
  assign alu_ctrl_io_funct3 = io_instruction[14:12]; // @[src/main/scala/riscv/core/Execute.scala 27:30]
  assign alu_ctrl_io_funct7 = io_instruction[31:25]; // @[src/main/scala/riscv/core/Execute.scala 28:30]
endmodule
module MemoryAccess(
  input  [31:0] io_alu_result, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  input  [31:0] io_reg2_data, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  input         io_memory_read_enable, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  input         io_memory_write_enable, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  input  [2:0]  io_funct3, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  output [31:0] io_wb_memory_read_data, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  output [31:0] io_memory_bundle_address, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  output [31:0] io_memory_bundle_write_data, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  output        io_memory_bundle_write_enable, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  output        io_memory_bundle_write_strobe_0, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  output        io_memory_bundle_write_strobe_1, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  output        io_memory_bundle_write_strobe_2, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  output        io_memory_bundle_write_strobe_3, // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
  input  [31:0] io_memory_bundle_read_data // @[src/main/scala/riscv/core/MemoryAccess.scala 12:14]
);
  wire [1:0] mem_address_index = io_alu_result[1:0]; // @[src/main/scala/riscv/core/MemoryAccess.scala 23:40]
  wire [23:0] _io_wb_memory_read_data_T_2 = io_memory_bundle_read_data[31] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 39:19]
  wire [31:0] _io_wb_memory_read_data_T_4 = {_io_wb_memory_read_data_T_2,io_memory_bundle_read_data[31:24]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 39:14]
  wire [23:0] _io_wb_memory_read_data_T_7 = io_memory_bundle_read_data[7] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 41:28]
  wire [31:0] _io_wb_memory_read_data_T_9 = {_io_wb_memory_read_data_T_7,io_memory_bundle_read_data[7:0]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 41:23]
  wire [23:0] _io_wb_memory_read_data_T_12 = io_memory_bundle_read_data[15] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 42:28]
  wire [31:0] _io_wb_memory_read_data_T_14 = {_io_wb_memory_read_data_T_12,io_memory_bundle_read_data[15:8]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 42:23]
  wire [23:0] _io_wb_memory_read_data_T_17 = io_memory_bundle_read_data[23] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 43:28]
  wire [31:0] _io_wb_memory_read_data_T_19 = {_io_wb_memory_read_data_T_17,io_memory_bundle_read_data[23:16]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 43:23]
  wire  _io_wb_memory_read_data_T_20 = 2'h0 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_21 = 2'h0 == mem_address_index ? _io_wb_memory_read_data_T_9 :
    _io_wb_memory_read_data_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_wb_memory_read_data_T_22 = 2'h1 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_23 = 2'h1 == mem_address_index ? _io_wb_memory_read_data_T_14 :
    _io_wb_memory_read_data_T_21; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_wb_memory_read_data_T_24 = 2'h2 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_25 = 2'h2 == mem_address_index ? _io_wb_memory_read_data_T_19 :
    _io_wb_memory_read_data_T_23; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_28 = {24'h0,io_memory_bundle_read_data[31:24]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 48:14]
  wire [31:0] _io_wb_memory_read_data_T_31 = {24'h0,io_memory_bundle_read_data[7:0]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 50:23]
  wire [31:0] _io_wb_memory_read_data_T_34 = {24'h0,io_memory_bundle_read_data[15:8]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 51:23]
  wire [31:0] _io_wb_memory_read_data_T_37 = {24'h0,io_memory_bundle_read_data[23:16]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 52:23]
  wire [31:0] _io_wb_memory_read_data_T_39 = 2'h0 == mem_address_index ? _io_wb_memory_read_data_T_31 :
    _io_wb_memory_read_data_T_28; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_41 = 2'h1 == mem_address_index ? _io_wb_memory_read_data_T_34 :
    _io_wb_memory_read_data_T_39; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_43 = 2'h2 == mem_address_index ? _io_wb_memory_read_data_T_37 :
    _io_wb_memory_read_data_T_41; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_wb_memory_read_data_T_44 = mem_address_index == 2'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 56:29]
  wire [15:0] _io_wb_memory_read_data_T_47 = io_memory_bundle_read_data[15] ? 16'hffff : 16'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 57:19]
  wire [31:0] _io_wb_memory_read_data_T_49 = {_io_wb_memory_read_data_T_47,io_memory_bundle_read_data[15:0]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 57:14]
  wire [15:0] _io_wb_memory_read_data_T_52 = io_memory_bundle_read_data[31] ? 16'hffff : 16'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 58:19]
  wire [31:0] _io_wb_memory_read_data_T_54 = {_io_wb_memory_read_data_T_52,io_memory_bundle_read_data[31:16]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 58:14]
  wire [31:0] _io_wb_memory_read_data_T_55 = _io_wb_memory_read_data_T_44 ? _io_wb_memory_read_data_T_49 :
    _io_wb_memory_read_data_T_54; // @[src/main/scala/riscv/core/MemoryAccess.scala 55:36]
  wire [31:0] _io_wb_memory_read_data_T_59 = {16'h0,io_memory_bundle_read_data[15:0]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 62:14]
  wire [31:0] _io_wb_memory_read_data_T_62 = {16'h0,io_memory_bundle_read_data[31:16]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 63:14]
  wire [31:0] _io_wb_memory_read_data_T_63 = _io_wb_memory_read_data_T_44 ? _io_wb_memory_read_data_T_59 :
    _io_wb_memory_read_data_T_62; // @[src/main/scala/riscv/core/MemoryAccess.scala 60:37]
  wire [31:0] _io_wb_memory_read_data_T_65 = 3'h0 == io_funct3 ? _io_wb_memory_read_data_T_25 : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_67 = 3'h4 == io_funct3 ? _io_wb_memory_read_data_T_43 :
    _io_wb_memory_read_data_T_65; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_69 = 3'h1 == io_funct3 ? _io_wb_memory_read_data_T_55 :
    _io_wb_memory_read_data_T_67; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_71 = 3'h5 == io_funct3 ? _io_wb_memory_read_data_T_63 :
    _io_wb_memory_read_data_T_69; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_73 = 3'h2 == io_funct3 ? io_memory_bundle_read_data :
    _io_wb_memory_read_data_T_71; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _GEN_3 = 2'h3 == mem_address_index; // @[src/main/scala/riscv/core/MemoryAccess.scala 71:35 73:{56,56}]
  wire [4:0] _io_memory_bundle_write_data_T_1 = {mem_address_index, 3'h0}; // @[src/main/scala/riscv/core/MemoryAccess.scala 74:97]
  wire [39:0] _GEN_0 = {{31'd0}, io_reg2_data[8:0]}; // @[src/main/scala/riscv/core/MemoryAccess.scala 74:75]
  wire [39:0] _io_memory_bundle_write_data_T_2 = _GEN_0 << _io_memory_bundle_write_data_T_1; // @[src/main/scala/riscv/core/MemoryAccess.scala 74:75]
  wire [32:0] _io_memory_bundle_write_data_T_5 = {io_reg2_data[16:0], 16'h0}; // @[src/main/scala/riscv/core/MemoryAccess.scala 90:11]
  wire [32:0] _GEN_6 = _io_wb_memory_read_data_T_44 ? {{16'd0}, io_reg2_data[16:0]} : _io_memory_bundle_write_data_T_5; // @[src/main/scala/riscv/core/MemoryAccess.scala 78:39 82:37 87:37]
  wire  _GEN_7 = _io_wb_memory_read_data_T_44 ? 1'h0 : 1'h1; // @[src/main/scala/riscv/core/MemoryAccess.scala 71:35 78:39 85:44]
  wire  _T_3 = io_funct3 == 3'h2; // @[src/main/scala/riscv/core/MemoryAccess.scala 92:26]
  wire  _GEN_13 = io_funct3 == 3'h1 ? _io_wb_memory_read_data_T_44 : _T_3; // @[src/main/scala/riscv/core/MemoryAccess.scala 77:52]
  wire [32:0] _GEN_15 = io_funct3 == 3'h1 ? _GEN_6 : {{1'd0}, io_reg2_data}; // @[src/main/scala/riscv/core/MemoryAccess.scala 69:35 77:52]
  wire  _GEN_16 = io_funct3 == 3'h1 ? _GEN_7 : _T_3; // @[src/main/scala/riscv/core/MemoryAccess.scala 77:52]
  wire  _GEN_18 = io_funct3 == 3'h0 ? _io_wb_memory_read_data_T_20 : _GEN_13; // @[src/main/scala/riscv/core/MemoryAccess.scala 72:46]
  wire  _GEN_19 = io_funct3 == 3'h0 ? _io_wb_memory_read_data_T_22 : _GEN_13; // @[src/main/scala/riscv/core/MemoryAccess.scala 72:46]
  wire  _GEN_20 = io_funct3 == 3'h0 ? _io_wb_memory_read_data_T_24 : _GEN_16; // @[src/main/scala/riscv/core/MemoryAccess.scala 72:46]
  wire  _GEN_21 = io_funct3 == 3'h0 ? _GEN_3 : _GEN_16; // @[src/main/scala/riscv/core/MemoryAccess.scala 72:46]
  wire [39:0] _GEN_22 = io_funct3 == 3'h0 ? _io_memory_bundle_write_data_T_2 : {{7'd0}, _GEN_15}; // @[src/main/scala/riscv/core/MemoryAccess.scala 72:46 74:35]
  wire [39:0] _GEN_23 = io_memory_write_enable ? _GEN_22 : 40'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 26:33 68:38]
  wire  _GEN_25 = io_memory_write_enable & _GEN_18; // @[src/main/scala/riscv/core/MemoryAccess.scala 28:33 68:38]
  wire  _GEN_26 = io_memory_write_enable & _GEN_19; // @[src/main/scala/riscv/core/MemoryAccess.scala 28:33 68:38]
  wire  _GEN_27 = io_memory_write_enable & _GEN_20; // @[src/main/scala/riscv/core/MemoryAccess.scala 28:33 68:38]
  wire  _GEN_28 = io_memory_write_enable & _GEN_21; // @[src/main/scala/riscv/core/MemoryAccess.scala 28:33 68:38]
  wire [39:0] _GEN_30 = io_memory_read_enable ? 40'h0 : _GEN_23; // @[src/main/scala/riscv/core/MemoryAccess.scala 31:31 26:33]
  assign io_wb_memory_read_data = io_memory_read_enable ? _io_wb_memory_read_data_T_73 : 32'h0; // @[src/main/scala/riscv/core/MemoryAccess.scala 31:31 33:28 29:33]
  assign io_memory_bundle_address = io_alu_result; // @[src/main/scala/riscv/core/MemoryAccess.scala 27:33]
  assign io_memory_bundle_write_data = _GEN_30[31:0];
  assign io_memory_bundle_write_enable = io_memory_read_enable ? 1'h0 : io_memory_write_enable; // @[src/main/scala/riscv/core/MemoryAccess.scala 31:31 25:33]
  assign io_memory_bundle_write_strobe_0 = io_memory_read_enable ? 1'h0 : _GEN_25; // @[src/main/scala/riscv/core/MemoryAccess.scala 31:31 28:33]
  assign io_memory_bundle_write_strobe_1 = io_memory_read_enable ? 1'h0 : _GEN_26; // @[src/main/scala/riscv/core/MemoryAccess.scala 31:31 28:33]
  assign io_memory_bundle_write_strobe_2 = io_memory_read_enable ? 1'h0 : _GEN_27; // @[src/main/scala/riscv/core/MemoryAccess.scala 31:31 28:33]
  assign io_memory_bundle_write_strobe_3 = io_memory_read_enable ? 1'h0 : _GEN_28; // @[src/main/scala/riscv/core/MemoryAccess.scala 31:31 28:33]
endmodule
module WriteBack(
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/WriteBack.scala 11:14]
  input  [31:0] io_alu_result, // @[src/main/scala/riscv/core/WriteBack.scala 11:14]
  input  [31:0] io_memory_read_data, // @[src/main/scala/riscv/core/WriteBack.scala 11:14]
  input  [1:0]  io_regs_write_source, // @[src/main/scala/riscv/core/WriteBack.scala 11:14]
  output [31:0] io_regs_write_data // @[src/main/scala/riscv/core/WriteBack.scala 11:14]
);
  wire [31:0] _io_regs_write_data_T_1 = io_instruction_address + 32'h4; // @[src/main/scala/riscv/core/WriteBack.scala 23:72]
  wire [31:0] _io_regs_write_data_T_3 = 2'h1 == io_regs_write_source ? io_memory_read_data : io_alu_result; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_regs_write_data = 2'h3 == io_regs_write_source ? _io_regs_write_data_T_1 : _io_regs_write_data_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
endmodule
module CPU(
  input         clock,
  input         reset,
  output [31:0] io_instruction_address, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  output [31:0] io_memory_bundle_address, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  output [31:0] io_memory_bundle_write_data, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  output        io_memory_bundle_write_enable, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  output        io_memory_bundle_write_strobe_0, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  output        io_memory_bundle_write_strobe_1, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  output        io_memory_bundle_write_strobe_2, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  output        io_memory_bundle_write_strobe_3, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  input  [31:0] io_memory_bundle_read_data, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  input         io_instruction_valid, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  input  [4:0]  io_debug_read_address, // @[src/main/scala/riscv/core/CPU.scala 12:14]
  output [31:0] io_debug_read_data // @[src/main/scala/riscv/core/CPU.scala 12:14]
);
  wire  regs_clock; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire  regs_reset; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire  regs_io_write_enable; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire [4:0] regs_io_write_address; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire [31:0] regs_io_write_data; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire [4:0] regs_io_read_address1; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire [4:0] regs_io_read_address2; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire [31:0] regs_io_read_data1; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire [31:0] regs_io_read_data2; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire [4:0] regs_io_debug_read_address; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire [31:0] regs_io_debug_read_data; // @[src/main/scala/riscv/core/CPU.scala 14:26]
  wire  inst_fetch_clock; // @[src/main/scala/riscv/core/CPU.scala 15:26]
  wire  inst_fetch_reset; // @[src/main/scala/riscv/core/CPU.scala 15:26]
  wire  inst_fetch_io_jump_flag_id; // @[src/main/scala/riscv/core/CPU.scala 15:26]
  wire [31:0] inst_fetch_io_jump_address_id; // @[src/main/scala/riscv/core/CPU.scala 15:26]
  wire [31:0] inst_fetch_io_instruction_read_data; // @[src/main/scala/riscv/core/CPU.scala 15:26]
  wire  inst_fetch_io_instruction_valid; // @[src/main/scala/riscv/core/CPU.scala 15:26]
  wire [31:0] inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 15:26]
  wire [31:0] inst_fetch_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 15:26]
  wire [31:0] id_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire [4:0] id_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire [4:0] id_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire [31:0] id_io_ex_immediate; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire  id_io_ex_aluop1_source; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire  id_io_ex_aluop2_source; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire  id_io_memory_read_enable; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire  id_io_memory_write_enable; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire [1:0] id_io_wb_reg_write_source; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire  id_io_reg_write_enable; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire [4:0] id_io_reg_write_address; // @[src/main/scala/riscv/core/CPU.scala 16:26]
  wire [31:0] ex_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 17:26]
  wire [31:0] ex_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 17:26]
  wire [31:0] ex_io_reg1_data; // @[src/main/scala/riscv/core/CPU.scala 17:26]
  wire [31:0] ex_io_reg2_data; // @[src/main/scala/riscv/core/CPU.scala 17:26]
  wire [31:0] ex_io_immediate; // @[src/main/scala/riscv/core/CPU.scala 17:26]
  wire  ex_io_aluop1_source; // @[src/main/scala/riscv/core/CPU.scala 17:26]
  wire  ex_io_aluop2_source; // @[src/main/scala/riscv/core/CPU.scala 17:26]
  wire [31:0] ex_io_mem_alu_result; // @[src/main/scala/riscv/core/CPU.scala 17:26]
  wire  ex_io_if_jump_flag; // @[src/main/scala/riscv/core/CPU.scala 17:26]
  wire [31:0] ex_io_if_jump_address; // @[src/main/scala/riscv/core/CPU.scala 17:26]
  wire [31:0] mem_io_alu_result; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire [31:0] mem_io_reg2_data; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire  mem_io_memory_read_enable; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire  mem_io_memory_write_enable; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire [2:0] mem_io_funct3; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire [31:0] mem_io_wb_memory_read_data; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire [31:0] mem_io_memory_bundle_address; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire [31:0] mem_io_memory_bundle_write_data; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire  mem_io_memory_bundle_write_enable; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire  mem_io_memory_bundle_write_strobe_0; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire  mem_io_memory_bundle_write_strobe_1; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire  mem_io_memory_bundle_write_strobe_2; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire  mem_io_memory_bundle_write_strobe_3; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire [31:0] mem_io_memory_bundle_read_data; // @[src/main/scala/riscv/core/CPU.scala 18:26]
  wire [31:0] wb_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 19:26]
  wire [31:0] wb_io_alu_result; // @[src/main/scala/riscv/core/CPU.scala 19:26]
  wire [31:0] wb_io_memory_read_data; // @[src/main/scala/riscv/core/CPU.scala 19:26]
  wire [1:0] wb_io_regs_write_source; // @[src/main/scala/riscv/core/CPU.scala 19:26]
  wire [31:0] wb_io_regs_write_data; // @[src/main/scala/riscv/core/CPU.scala 19:26]
  RegisterFile regs ( // @[src/main/scala/riscv/core/CPU.scala 14:26]
    .clock(regs_clock),
    .reset(regs_reset),
    .io_write_enable(regs_io_write_enable),
    .io_write_address(regs_io_write_address),
    .io_write_data(regs_io_write_data),
    .io_read_address1(regs_io_read_address1),
    .io_read_address2(regs_io_read_address2),
    .io_read_data1(regs_io_read_data1),
    .io_read_data2(regs_io_read_data2),
    .io_debug_read_address(regs_io_debug_read_address),
    .io_debug_read_data(regs_io_debug_read_data)
  );
  InstructionFetch inst_fetch ( // @[src/main/scala/riscv/core/CPU.scala 15:26]
    .clock(inst_fetch_clock),
    .reset(inst_fetch_reset),
    .io_jump_flag_id(inst_fetch_io_jump_flag_id),
    .io_jump_address_id(inst_fetch_io_jump_address_id),
    .io_instruction_read_data(inst_fetch_io_instruction_read_data),
    .io_instruction_valid(inst_fetch_io_instruction_valid),
    .io_instruction_address(inst_fetch_io_instruction_address),
    .io_instruction(inst_fetch_io_instruction)
  );
  InstructionDecode id ( // @[src/main/scala/riscv/core/CPU.scala 16:26]
    .io_instruction(id_io_instruction),
    .io_regs_reg1_read_address(id_io_regs_reg1_read_address),
    .io_regs_reg2_read_address(id_io_regs_reg2_read_address),
    .io_ex_immediate(id_io_ex_immediate),
    .io_ex_aluop1_source(id_io_ex_aluop1_source),
    .io_ex_aluop2_source(id_io_ex_aluop2_source),
    .io_memory_read_enable(id_io_memory_read_enable),
    .io_memory_write_enable(id_io_memory_write_enable),
    .io_wb_reg_write_source(id_io_wb_reg_write_source),
    .io_reg_write_enable(id_io_reg_write_enable),
    .io_reg_write_address(id_io_reg_write_address)
  );
  Execute ex ( // @[src/main/scala/riscv/core/CPU.scala 17:26]
    .io_instruction(ex_io_instruction),
    .io_instruction_address(ex_io_instruction_address),
    .io_reg1_data(ex_io_reg1_data),
    .io_reg2_data(ex_io_reg2_data),
    .io_immediate(ex_io_immediate),
    .io_aluop1_source(ex_io_aluop1_source),
    .io_aluop2_source(ex_io_aluop2_source),
    .io_mem_alu_result(ex_io_mem_alu_result),
    .io_if_jump_flag(ex_io_if_jump_flag),
    .io_if_jump_address(ex_io_if_jump_address)
  );
  MemoryAccess mem ( // @[src/main/scala/riscv/core/CPU.scala 18:26]
    .io_alu_result(mem_io_alu_result),
    .io_reg2_data(mem_io_reg2_data),
    .io_memory_read_enable(mem_io_memory_read_enable),
    .io_memory_write_enable(mem_io_memory_write_enable),
    .io_funct3(mem_io_funct3),
    .io_wb_memory_read_data(mem_io_wb_memory_read_data),
    .io_memory_bundle_address(mem_io_memory_bundle_address),
    .io_memory_bundle_write_data(mem_io_memory_bundle_write_data),
    .io_memory_bundle_write_enable(mem_io_memory_bundle_write_enable),
    .io_memory_bundle_write_strobe_0(mem_io_memory_bundle_write_strobe_0),
    .io_memory_bundle_write_strobe_1(mem_io_memory_bundle_write_strobe_1),
    .io_memory_bundle_write_strobe_2(mem_io_memory_bundle_write_strobe_2),
    .io_memory_bundle_write_strobe_3(mem_io_memory_bundle_write_strobe_3),
    .io_memory_bundle_read_data(mem_io_memory_bundle_read_data)
  );
  WriteBack wb ( // @[src/main/scala/riscv/core/CPU.scala 19:26]
    .io_instruction_address(wb_io_instruction_address),
    .io_alu_result(wb_io_alu_result),
    .io_memory_read_data(wb_io_memory_read_data),
    .io_regs_write_source(wb_io_regs_write_source),
    .io_regs_write_data(wb_io_regs_write_data)
  );
  assign io_instruction_address = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 29:39]
  assign io_memory_bundle_address = {3'h0,mem_io_memory_bundle_address[28:0]}; // @[src/main/scala/riscv/core/CPU.scala 73:34]
  assign io_memory_bundle_write_data = mem_io_memory_bundle_write_data; // @[src/main/scala/riscv/core/CPU.scala 78:34]
  assign io_memory_bundle_write_enable = mem_io_memory_bundle_write_enable; // @[src/main/scala/riscv/core/CPU.scala 77:34]
  assign io_memory_bundle_write_strobe_0 = mem_io_memory_bundle_write_strobe_0; // @[src/main/scala/riscv/core/CPU.scala 79:34]
  assign io_memory_bundle_write_strobe_1 = mem_io_memory_bundle_write_strobe_1; // @[src/main/scala/riscv/core/CPU.scala 79:34]
  assign io_memory_bundle_write_strobe_2 = mem_io_memory_bundle_write_strobe_2; // @[src/main/scala/riscv/core/CPU.scala 79:34]
  assign io_memory_bundle_write_strobe_3 = mem_io_memory_bundle_write_strobe_3; // @[src/main/scala/riscv/core/CPU.scala 79:34]
  assign io_debug_read_data = regs_io_debug_read_data; // @[src/main/scala/riscv/core/CPU.scala 38:30]
  assign regs_clock = clock;
  assign regs_reset = reset;
  assign regs_io_write_enable = id_io_reg_write_enable; // @[src/main/scala/riscv/core/CPU.scala 47:25]
  assign regs_io_write_address = id_io_reg_write_address; // @[src/main/scala/riscv/core/CPU.scala 48:25]
  assign regs_io_write_data = wb_io_regs_write_data; // @[src/main/scala/riscv/core/CPU.scala 49:25]
  assign regs_io_read_address1 = id_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/CPU.scala 34:25]
  assign regs_io_read_address2 = id_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/CPU.scala 35:25]
  assign regs_io_debug_read_address = io_debug_read_address; // @[src/main/scala/riscv/core/CPU.scala 37:30]
  assign inst_fetch_clock = clock;
  assign inst_fetch_reset = reset;
  assign inst_fetch_io_jump_flag_id = ex_io_if_jump_flag; // @[src/main/scala/riscv/core/CPU.scala 26:39]
  assign inst_fetch_io_jump_address_id = ex_io_if_jump_address; // @[src/main/scala/riscv/core/CPU.scala 25:39]
  assign inst_fetch_io_instruction_read_data = io_instruction; // @[src/main/scala/riscv/core/CPU.scala 28:39]
  assign inst_fetch_io_instruction_valid = io_instruction_valid; // @[src/main/scala/riscv/core/CPU.scala 27:39]
  assign id_io_instruction = inst_fetch_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 40:21]
  assign ex_io_instruction = inst_fetch_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 58:21]
  assign ex_io_instruction_address = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 59:29]
  assign ex_io_reg1_data = regs_io_read_data1; // @[src/main/scala/riscv/core/CPU.scala 60:19]
  assign ex_io_reg2_data = regs_io_read_data2; // @[src/main/scala/riscv/core/CPU.scala 61:19]
  assign ex_io_immediate = id_io_ex_immediate; // @[src/main/scala/riscv/core/CPU.scala 62:19]
  assign ex_io_aluop1_source = id_io_ex_aluop1_source; // @[src/main/scala/riscv/core/CPU.scala 63:23]
  assign ex_io_aluop2_source = id_io_ex_aluop2_source; // @[src/main/scala/riscv/core/CPU.scala 64:23]
  assign mem_io_alu_result = ex_io_mem_alu_result; // @[src/main/scala/riscv/core/CPU.scala 67:30]
  assign mem_io_reg2_data = regs_io_read_data2; // @[src/main/scala/riscv/core/CPU.scala 68:30]
  assign mem_io_memory_read_enable = id_io_memory_read_enable; // @[src/main/scala/riscv/core/CPU.scala 69:30]
  assign mem_io_memory_write_enable = id_io_memory_write_enable; // @[src/main/scala/riscv/core/CPU.scala 70:30]
  assign mem_io_funct3 = inst_fetch_io_instruction[14:12]; // @[src/main/scala/riscv/core/CPU.scala 71:58]
  assign mem_io_memory_bundle_read_data = io_memory_bundle_read_data; // @[src/main/scala/riscv/core/CPU.scala 80:34]
  assign wb_io_instruction_address = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 82:29]
  assign wb_io_alu_result = ex_io_mem_alu_result; // @[src/main/scala/riscv/core/CPU.scala 83:29]
  assign wb_io_memory_read_data = mem_io_wb_memory_read_data; // @[src/main/scala/riscv/core/CPU.scala 84:29]
  assign wb_io_regs_write_source = id_io_wb_reg_write_source; // @[src/main/scala/riscv/core/CPU.scala 85:29]
endmodule
module Top(
  input         clock,
  input         reset,
  output [31:0] io_instruction_address, // @[src/main/scala/board/verilator/Top.scala 15:14]
  input  [31:0] io_instruction, // @[src/main/scala/board/verilator/Top.scala 15:14]
  output [31:0] io_memory_bundle_address, // @[src/main/scala/board/verilator/Top.scala 15:14]
  output [31:0] io_memory_bundle_write_data, // @[src/main/scala/board/verilator/Top.scala 15:14]
  output        io_memory_bundle_write_enable, // @[src/main/scala/board/verilator/Top.scala 15:14]
  output        io_memory_bundle_write_strobe_0, // @[src/main/scala/board/verilator/Top.scala 15:14]
  output        io_memory_bundle_write_strobe_1, // @[src/main/scala/board/verilator/Top.scala 15:14]
  output        io_memory_bundle_write_strobe_2, // @[src/main/scala/board/verilator/Top.scala 15:14]
  output        io_memory_bundle_write_strobe_3, // @[src/main/scala/board/verilator/Top.scala 15:14]
  input  [31:0] io_memory_bundle_read_data, // @[src/main/scala/board/verilator/Top.scala 15:14]
  input         io_instruction_valid, // @[src/main/scala/board/verilator/Top.scala 15:14]
  output [2:0]  io_deviceSelect, // @[src/main/scala/board/verilator/Top.scala 15:14]
  input  [4:0]  io_debug_read_address, // @[src/main/scala/board/verilator/Top.scala 15:14]
  output [31:0] io_debug_read_data // @[src/main/scala/board/verilator/Top.scala 15:14]
);
  wire  cpu_clock; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire  cpu_reset; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire [31:0] cpu_io_instruction_address; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire [31:0] cpu_io_instruction; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire [31:0] cpu_io_memory_bundle_address; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire [31:0] cpu_io_memory_bundle_write_data; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire  cpu_io_memory_bundle_write_enable; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire  cpu_io_memory_bundle_write_strobe_0; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire  cpu_io_memory_bundle_write_strobe_1; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire  cpu_io_memory_bundle_write_strobe_2; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire  cpu_io_memory_bundle_write_strobe_3; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire [31:0] cpu_io_memory_bundle_read_data; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire  cpu_io_instruction_valid; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire [4:0] cpu_io_debug_read_address; // @[src/main/scala/board/verilator/Top.scala 17:19]
  wire [31:0] cpu_io_debug_read_data; // @[src/main/scala/board/verilator/Top.scala 17:19]
  CPU cpu ( // @[src/main/scala/board/verilator/Top.scala 17:19]
    .clock(cpu_clock),
    .reset(cpu_reset),
    .io_instruction_address(cpu_io_instruction_address),
    .io_instruction(cpu_io_instruction),
    .io_memory_bundle_address(cpu_io_memory_bundle_address),
    .io_memory_bundle_write_data(cpu_io_memory_bundle_write_data),
    .io_memory_bundle_write_enable(cpu_io_memory_bundle_write_enable),
    .io_memory_bundle_write_strobe_0(cpu_io_memory_bundle_write_strobe_0),
    .io_memory_bundle_write_strobe_1(cpu_io_memory_bundle_write_strobe_1),
    .io_memory_bundle_write_strobe_2(cpu_io_memory_bundle_write_strobe_2),
    .io_memory_bundle_write_strobe_3(cpu_io_memory_bundle_write_strobe_3),
    .io_memory_bundle_read_data(cpu_io_memory_bundle_read_data),
    .io_instruction_valid(cpu_io_instruction_valid),
    .io_debug_read_address(cpu_io_debug_read_address),
    .io_debug_read_data(cpu_io_debug_read_data)
  );
  assign io_instruction_address = cpu_io_instruction_address; // @[src/main/scala/board/verilator/Top.scala 24:26]
  assign io_memory_bundle_address = cpu_io_memory_bundle_address; // @[src/main/scala/board/verilator/Top.scala 23:20]
  assign io_memory_bundle_write_data = cpu_io_memory_bundle_write_data; // @[src/main/scala/board/verilator/Top.scala 23:20]
  assign io_memory_bundle_write_enable = cpu_io_memory_bundle_write_enable; // @[src/main/scala/board/verilator/Top.scala 23:20]
  assign io_memory_bundle_write_strobe_0 = cpu_io_memory_bundle_write_strobe_0; // @[src/main/scala/board/verilator/Top.scala 23:20]
  assign io_memory_bundle_write_strobe_1 = cpu_io_memory_bundle_write_strobe_1; // @[src/main/scala/board/verilator/Top.scala 23:20]
  assign io_memory_bundle_write_strobe_2 = cpu_io_memory_bundle_write_strobe_2; // @[src/main/scala/board/verilator/Top.scala 23:20]
  assign io_memory_bundle_write_strobe_3 = cpu_io_memory_bundle_write_strobe_3; // @[src/main/scala/board/verilator/Top.scala 23:20]
  assign io_deviceSelect = 3'h0; // @[src/main/scala/board/verilator/Top.scala 19:29]
  assign io_debug_read_data = cpu_io_debug_read_data; // @[src/main/scala/board/verilator/Top.scala 21:29]
  assign cpu_clock = clock;
  assign cpu_reset = reset;
  assign cpu_io_instruction = io_instruction; // @[src/main/scala/board/verilator/Top.scala 25:26]
  assign cpu_io_memory_bundle_read_data = io_memory_bundle_read_data; // @[src/main/scala/board/verilator/Top.scala 23:20]
  assign cpu_io_instruction_valid = io_instruction_valid; // @[src/main/scala/board/verilator/Top.scala 27:28]
  assign cpu_io_debug_read_address = io_debug_read_address; // @[src/main/scala/board/verilator/Top.scala 20:29]
endmodule
