{
  "version": "1.2",
  "package": {
    "name": "COUNT",
    "version": "1.0",
    "description": "4bit Counter",
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
          "id": "c8b9dd21-a33a-4dff-934a-35409ebecd90",
          "type": "basic.output",
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
          "id": "13af14ff-9a78-455c-af01-b4505f1e68cb",
          "type": "basic.code",
          "data": {
            "code": "// 4bit counter\nreg out;\n\nalways @(posedge clk) begin\n  if (rst == 1)\n    out <= 0;\n  else if (en == 1)\n    out <= out + 1;\nend",
            "params": [],
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
                  "range": "[3:0]",
                  "size": 4
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
            "block": "13af14ff-9a78-455c-af01-b4505f1e68cb",
            "port": "out"
          },
          "target": {
            "block": "c8b9dd21-a33a-4dff-934a-35409ebecd90",
            "port": "in"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {}
}