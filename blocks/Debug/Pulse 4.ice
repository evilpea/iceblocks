{
  "version": "1.2",
  "package": {
    "name": "PULSE",
    "version": "1.0",
    "description": "Pulses an integer out",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "f8485b82-77c1-4838-ac3f-845f16f67870",
          "type": "basic.input",
          "data": {
            "name": "",
            "clock": true
          },
          "position": {
            "x": 432,
            "y": 200
          }
        },
        {
          "id": "db4fde29-a05b-4301-b2a2-5174211ace0e",
          "type": "basic.output",
          "data": {
            "name": ""
          },
          "position": {
            "x": 1272,
            "y": 288
          }
        },
        {
          "id": "e2205aba-d9a8-4b4e-8c64-f967950762a3",
          "type": "basic.input",
          "data": {
            "name": "",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 424,
            "y": 368
          }
        },
        {
          "id": "3d45f6b7-c220-4eed-823a-01d3ab8d3c92",
          "type": "basic.code",
          "data": {
            "code": "// pulses out IN times on CLK edge\nreg [3:0]pulses = 0;\nreg [7:0]waits = 0;\nreg state = 0;\n\nassign out = state;\n\nalways @(posedge clk) begin\n\n  // not enough pulses yet. We have to pulse.\n  if (pulses < in) begin\n    if (state == 0)\n      state <= 1;\n    else begin\n        state <= 0;\n        pulses <= pulses + 1;\n    end\n  end\n  \n  // all pulses out. Wait.\n  else begin\n    state <= 0;\n    if (waits < 255)\n      waits <= waits + 1;\n    else begin\n      waits <= 0;\n      pulses <= 0;\n    end\n  end\n  \nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "in",
                  "range": "[3:0]",
                  "size": 4
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
            "x": 600,
            "y": 144
          },
          "size": {
            "width": 600,
            "height": 344
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "3d45f6b7-c220-4eed-823a-01d3ab8d3c92",
            "port": "out"
          },
          "target": {
            "block": "db4fde29-a05b-4301-b2a2-5174211ace0e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f8485b82-77c1-4838-ac3f-845f16f67870",
            "port": "out"
          },
          "target": {
            "block": "3d45f6b7-c220-4eed-823a-01d3ab8d3c92",
            "port": "clk"
          },
          "vertices": [
            {
              "x": 584,
              "y": 232
            }
          ]
        },
        {
          "source": {
            "block": "e2205aba-d9a8-4b4e-8c64-f967950762a3",
            "port": "out"
          },
          "target": {
            "block": "3d45f6b7-c220-4eed-823a-01d3ab8d3c92",
            "port": "in"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {}
}