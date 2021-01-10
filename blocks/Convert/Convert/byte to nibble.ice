{
  "version": "1.2",
  "package": {
    "name": "[ 8 ][ 4 ]",
    "version": "1.0",
    "description": "Converts a byte to two nibbles",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "7de0956a-cb20-4223-a222-8a9b8b138718",
          "type": "basic.output",
          "data": {
            "name": "H",
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
            "x": 1048,
            "y": 320
          }
        },
        {
          "id": "bc987423-275c-4ae2-88d9-bddc4fa6f411",
          "type": "basic.input",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 560,
            "y": 344
          }
        },
        {
          "id": "ad010baa-736a-40dd-8b09-e6a924c9185f",
          "type": "basic.output",
          "data": {
            "name": "L",
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
            "x": 1048,
            "y": 376
          }
        },
        {
          "id": "dbdfbbc7-c684-4dc5-a8c7-1260dda77ce3",
          "type": "basic.code",
          "data": {
            "code": "assign outL = in;\nassign outH = in >> 4;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "outH",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "outL",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 712,
            "y": 320
          },
          "size": {
            "width": 248,
            "height": 112
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "bc987423-275c-4ae2-88d9-bddc4fa6f411",
            "port": "out"
          },
          "target": {
            "block": "dbdfbbc7-c684-4dc5-a8c7-1260dda77ce3",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "dbdfbbc7-c684-4dc5-a8c7-1260dda77ce3",
            "port": "outL"
          },
          "target": {
            "block": "ad010baa-736a-40dd-8b09-e6a924c9185f",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "dbdfbbc7-c684-4dc5-a8c7-1260dda77ce3",
            "port": "outH"
          },
          "target": {
            "block": "7de0956a-cb20-4223-a222-8a9b8b138718",
            "port": "in"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {}
}