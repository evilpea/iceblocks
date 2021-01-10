{
  "version": "1.2",
  "package": {
    "name": "[ 4 ]",
    "version": "1.0",
    "description": "Combines 4 bits into a half-byte (nibble)",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "ce46e186-459c-4c60-9b62-83c8e31000b2",
          "type": "basic.input",
          "data": {
            "name": "b3",
            "pins": [
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
            "y": 152
          }
        },
        {
          "id": "993ce949-b21b-4330-9390-bf793940d09f",
          "type": "basic.input",
          "data": {
            "name": "b2",
            "pins": [
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
            "y": 192
          }
        },
        {
          "id": "31d923df-2450-4b5c-be4b-d5b117af96a8",
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
            "x": 824,
            "y": 216
          }
        },
        {
          "id": "29be1507-d3e4-461f-805a-696252e0d23d",
          "type": "basic.input",
          "data": {
            "name": "b1",
            "pins": [
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
            "y": 232
          }
        },
        {
          "id": "e6f662ba-7388-4009-ba9c-52bccfe74864",
          "type": "basic.input",
          "data": {
            "name": "b0",
            "pins": [
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
            "y": 272
          }
        },
        {
          "id": "e690565a-de16-40a5-a253-d50854e07725",
          "type": "basic.code",
          "data": {
            "code": "assign out = b0 + (b1<<1) + (b2<<2) + (b3<<3);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "b3"
                },
                {
                  "name": "b2"
                },
                {
                  "name": "b1"
                },
                {
                  "name": "b0"
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
            "x": 336,
            "y": 160
          },
          "size": {
            "width": 416,
            "height": 168
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "e690565a-de16-40a5-a253-d50854e07725",
            "port": "out"
          },
          "target": {
            "block": "31d923df-2450-4b5c-be4b-d5b117af96a8",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "e6f662ba-7388-4009-ba9c-52bccfe74864",
            "port": "out"
          },
          "target": {
            "block": "e690565a-de16-40a5-a253-d50854e07725",
            "port": "b0"
          }
        },
        {
          "source": {
            "block": "29be1507-d3e4-461f-805a-696252e0d23d",
            "port": "out"
          },
          "target": {
            "block": "e690565a-de16-40a5-a253-d50854e07725",
            "port": "b1"
          }
        },
        {
          "source": {
            "block": "993ce949-b21b-4330-9390-bf793940d09f",
            "port": "out"
          },
          "target": {
            "block": "e690565a-de16-40a5-a253-d50854e07725",
            "port": "b2"
          }
        },
        {
          "source": {
            "block": "ce46e186-459c-4c60-9b62-83c8e31000b2",
            "port": "out"
          },
          "target": {
            "block": "e690565a-de16-40a5-a253-d50854e07725",
            "port": "b3"
          }
        }
      ]
    }
  },
  "dependencies": {}
}