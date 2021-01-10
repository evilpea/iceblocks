{
  "version": "1.2",
  "package": {
    "name": "MULT",
    "version": "1.0",
    "description": "Multiplies A by Value",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "54ccbdf3-a726-44ed-92ff-a364b220ff0a",
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
            "x": 192,
            "y": 168
          }
        },
        {
          "id": "dd5de2d0-ebe5-4cf7-97e7-a891b7a7dbbf",
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
            "x": 744,
            "y": 168
          }
        },
        {
          "id": "143d3cb0-bbb4-4aec-950c-1d4c2607bc91",
          "type": "basic.constant",
          "data": {
            "name": "value",
            "value": "",
            "local": false
          },
          "position": {
            "x": 456,
            "y": 16
          }
        },
        {
          "id": "89594ef8-77a9-417a-8918-84657c6ec4da",
          "type": "basic.code",
          "data": {
            "code": "assign out = in * value;",
            "params": [
              {
                "name": "value"
              }
            ],
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
                  "name": "out",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 376,
            "y": 136
          },
          "size": {
            "width": 256,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "54ccbdf3-a726-44ed-92ff-a364b220ff0a",
            "port": "out"
          },
          "target": {
            "block": "89594ef8-77a9-417a-8918-84657c6ec4da",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "89594ef8-77a9-417a-8918-84657c6ec4da",
            "port": "out"
          },
          "target": {
            "block": "dd5de2d0-ebe5-4cf7-97e7-a891b7a7dbbf",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "143d3cb0-bbb4-4aec-950c-1d4c2607bc91",
            "port": "constant-out"
          },
          "target": {
            "block": "89594ef8-77a9-417a-8918-84657c6ec4da",
            "port": "value"
          }
        }
      ]
    }
  },
  "dependencies": {}
}