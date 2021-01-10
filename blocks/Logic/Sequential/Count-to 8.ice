{
  "version": "1.2",
  "package": {
    "name": "COUNT TO",
    "version": "1.0",
    "description": "Parametric 4bit counter",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "03ebdc3d-82f3-4de9-99f7-fbf76bb0092b",
          "type": "basic.input",
          "data": {
            "name": "",
            "clock": true,
            "virtual": true
          },
          "position": {
            "x": 232,
            "y": 144
          }
        },
        {
          "id": "d74f8893-7229-4df4-8610-227470405a86",
          "type": "basic.input",
          "data": {
            "name": "en",
            "clock": false,
            "virtual": true
          },
          "position": {
            "x": 232,
            "y": 232
          }
        },
        {
          "id": "7d2e4c8e-873c-43df-adac-a5178b6dace9",
          "type": "basic.output",
          "data": {
            "name": "",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
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
            "virtual": true
          },
          "position": {
            "x": 856,
            "y": 232
          }
        },
        {
          "id": "87d5a19e-e4c6-4426-a980-c6d2ae881c58",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "clock": false,
            "virtual": true
          },
          "position": {
            "x": 232,
            "y": 320
          }
        },
        {
          "id": "42644fbe-87cf-4974-be04-32ab88e6ea8f",
          "type": "basic.constant",
          "data": {
            "name": "to",
            "value": "0",
            "local": false
          },
          "position": {
            "x": 560,
            "y": 40
          }
        },
        {
          "id": "13af14ff-9a78-455c-af01-b4505f1e68cb",
          "type": "basic.code",
          "data": {
            "code": "// 8bit counter\nreg out;\n\nalways @(posedge clk) begin\n  if (rst == 1)\n    out <= 0;\n  else if (en == 1) begin\n    if (out + 1 > to)\n      out <= 0;\n    else\n      out <= out + 1;\n  end\nend",
            "params": [
              {
                "name": "to"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "en"
                },
                {
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "out",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 408,
            "y": 136
          },
          "size": {
            "width": 392,
            "height": 256
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "03ebdc3d-82f3-4de9-99f7-fbf76bb0092b",
            "port": "out"
          },
          "target": {
            "block": "13af14ff-9a78-455c-af01-b4505f1e68cb",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "d74f8893-7229-4df4-8610-227470405a86",
            "port": "out"
          },
          "target": {
            "block": "13af14ff-9a78-455c-af01-b4505f1e68cb",
            "port": "en"
          }
        },
        {
          "source": {
            "block": "87d5a19e-e4c6-4426-a980-c6d2ae881c58",
            "port": "out"
          },
          "target": {
            "block": "13af14ff-9a78-455c-af01-b4505f1e68cb",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "42644fbe-87cf-4974-be04-32ab88e6ea8f",
            "port": "constant-out"
          },
          "target": {
            "block": "13af14ff-9a78-455c-af01-b4505f1e68cb",
            "port": "to"
          }
        },
        {
          "source": {
            "block": "13af14ff-9a78-455c-af01-b4505f1e68cb",
            "port": "out"
          },
          "target": {
            "block": "7d2e4c8e-873c-43df-adac-a5178b6dace9",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}