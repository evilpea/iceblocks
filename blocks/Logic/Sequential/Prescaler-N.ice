{
  "version": "1.2",
  "package": {
    "name": "DIV",
    "version": "1.0",
    "description": "Prescaler N",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "21e0e8c7-7f8d-4785-a326-8bbc09c46a28",
          "type": "basic.input",
          "data": {
            "name": "",
            "clock": true,
            "virtual": true
          },
          "position": {
            "x": 248,
            "y": 320
          }
        },
        {
          "id": "2f90421e-2df4-4e6c-8496-1ff458597b40",
          "type": "basic.output",
          "data": {
            "name": "",
            "virtual": true
          },
          "position": {
            "x": 992,
            "y": 320
          }
        },
        {
          "id": "7421e81d-bf18-42e2-9a50-760ef3722492",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "22",
            "local": false
          },
          "position": {
            "x": 616,
            "y": 48
          }
        },
        {
          "id": "d83cb7b5-fcdf-482f-b233-58d49cfd58f6",
          "type": "basic.code",
          "data": {
            "code": "localparam M = $pow(2, N); // 2**N\n\nwire clk_temp;\nreg [N - 1:0] c = 0;\nreg dout;\n\nassign out = dout;\n\nalways @(posedge clk)\n  if (M == 0)\n    c <= 0;\n  else if (c == M - 1)\n    c <= 0;\n  else\n    c <= c + 1;\n\nassign clk_temp = (c == 0) ? 1 : 0;\n\nalways @(posedge clk)\n  if (N == 0)\n    out <= 0;\n  else if (clk_temp == 1)\n    \ndout <= ~dout;",
            "params": [
              {
                "name": "N"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "out"
                }
              ]
            }
          },
          "position": {
            "x": 408,
            "y": 160
          },
          "size": {
            "width": 512,
            "height": 384
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d83cb7b5-fcdf-482f-b233-58d49cfd58f6",
            "port": "out"
          },
          "target": {
            "block": "2f90421e-2df4-4e6c-8496-1ff458597b40",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "21e0e8c7-7f8d-4785-a326-8bbc09c46a28",
            "port": "out"
          },
          "target": {
            "block": "d83cb7b5-fcdf-482f-b233-58d49cfd58f6",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "7421e81d-bf18-42e2-9a50-760ef3722492",
            "port": "constant-out"
          },
          "target": {
            "block": "d83cb7b5-fcdf-482f-b233-58d49cfd58f6",
            "port": "N"
          }
        }
      ]
    }
  },
  "dependencies": {}
}