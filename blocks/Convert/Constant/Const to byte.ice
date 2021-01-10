{
  "version": "1.2",
  "package": {
    "name": "CONST [ 8 ]",
    "version": "1.0",
    "description": "Constant to byte",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "c362bd2d-b9ae-42ea-962b-2114057bb80f",
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
            "x": 328,
            "y": 248
          }
        },
        {
          "id": "52400e7c-2d69-4a8e-b00b-ffb992530f8c",
          "type": "basic.constant",
          "data": {
            "name": "value",
            "value": "",
            "local": false
          },
          "position": {
            "x": 80,
            "y": 40
          }
        },
        {
          "id": "f56dd8f5-71de-42f0-a46c-26243f8a3440",
          "type": "basic.code",
          "data": {
            "code": "assign out = value;\n",
            "params": [
              {
                "name": "value"
              }
            ],
            "ports": {
              "in": [],
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
            "x": -24,
            "y": 208
          },
          "size": {
            "width": 304,
            "height": 144
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "52400e7c-2d69-4a8e-b00b-ffb992530f8c",
            "port": "constant-out"
          },
          "target": {
            "block": "f56dd8f5-71de-42f0-a46c-26243f8a3440",
            "port": "value"
          }
        },
        {
          "source": {
            "block": "f56dd8f5-71de-42f0-a46c-26243f8a3440",
            "port": "out"
          },
          "target": {
            "block": "c362bd2d-b9ae-42ea-962b-2114057bb80f",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}