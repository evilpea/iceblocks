{
  "version": "1.2",
  "package": {
    "name": "7SEG",
    "version": "1.0",
    "description": "7 Segment display driver for a single character",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "1f53124a-cbb2-481f-b83b-b892d462b020",
          "type": "basic.output",
          "data": {
            "name": "",
            "range": "[6:0]",
            "size": 7
          },
          "position": {
            "x": 1224,
            "y": 336
          }
        },
        {
          "id": "e9d6b465-880f-4af9-95fe-d7fc224b9c13",
          "type": "basic.input",
          "data": {
            "name": "",
            "range": "[3:0]",
            "clock": false,
            "size": 4
          },
          "position": {
            "x": 376,
            "y": 336
          }
        },
        {
          "id": "8c01fcfb-8e43-4fdd-a5fa-f1821935dbc2",
          "type": "basic.code",
          "data": {
            "code": "reg [6:0] lut [0:15];\nreg [6:0] out_t;\n\ninitial begin\n    lut[0] = 7'b1111110; // 0\n    lut[1] = 7'b0110000; // 1\n    lut[2] = 7'b1101101; // 2\n    lut[3] = 7'b1111001; // 3\n    lut[4] = 7'b0110011; // 4\n    lut[5] = 7'b1011011; // 5\n    lut[6] = 7'b1011111; // 6\n    lut[7] = 7'b1110000; // 7\n    lut[8] = 7'b1111111; // 8\n    lut[9] = 7'b1110011; // 9\n    lut[10]= 7'b1110111; // A\n    lut[11]= 7'b0011111; // B\n    lut[12]= 7'b0001101; // C\n    lut[13]= 7'b0111101; // D\n    lut[14]= 7'b1001111; // E\n    lut[15]= 7'b1000111; // F\nend\n\nassign out = out_t;\n\nalways @(*) begin\n    out_t = lut[in];\nend\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "out",
                  "range": "[6:0]",
                  "size": 7
                }
              ]
            }
          },
          "position": {
            "x": 528,
            "y": 168
          },
          "size": {
            "width": 656,
            "height": 400
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8c01fcfb-8e43-4fdd-a5fa-f1821935dbc2",
            "port": "out"
          },
          "target": {
            "block": "1f53124a-cbb2-481f-b83b-b892d462b020",
            "port": "in"
          },
          "size": 7
        },
        {
          "source": {
            "block": "e9d6b465-880f-4af9-95fe-d7fc224b9c13",
            "port": "out"
          },
          "target": {
            "block": "8c01fcfb-8e43-4fdd-a5fa-f1821935dbc2",
            "port": "in"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {}
}