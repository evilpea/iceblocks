{
  "version": "1.2",
  "package": {
    "name": "[ 4 ] [ 8 ]",
    "version": "1.0",
    "description": "Converts two nibbles into a byte",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "3feef517-94d5-4fdb-b91c-e8bf39d3b3fd",
          "type": "basic.input",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 544,
            "y": 304
          }
        },
        {
          "id": "38f0463d-bdc0-40ff-8103-069298d08b68",
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
            "x": 1064,
            "y": 328
          }
        },
        {
          "id": "ff2eb00b-e824-4fa4-8b51-d3a950cfc588",
          "type": "basic.input",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 544,
            "y": 360
          }
        },
        {
          "id": "dbdfbbc7-c684-4dc5-a8c7-1260dda77ce3",
          "type": "basic.code",
          "data": {
            "code": "assign out = (inH << 4) | inL;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "inH",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "inL",
                  "range": "[3:0]",
                  "size": 4
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
            "x": 712,
            "y": 304
          },
          "size": {
            "width": 304,
            "height": 112
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "ff2eb00b-e824-4fa4-8b51-d3a950cfc588",
            "port": "out"
          },
          "target": {
            "block": "dbdfbbc7-c684-4dc5-a8c7-1260dda77ce3",
            "port": "inL"
          },
          "size": 4
        },
        {
          "source": {
            "block": "3feef517-94d5-4fdb-b91c-e8bf39d3b3fd",
            "port": "out"
          },
          "target": {
            "block": "dbdfbbc7-c684-4dc5-a8c7-1260dda77ce3",
            "port": "inH"
          },
          "size": 4
        },
        {
          "source": {
            "block": "dbdfbbc7-c684-4dc5-a8c7-1260dda77ce3",
            "port": "out"
          },
          "target": {
            "block": "38f0463d-bdc0-40ff-8103-069298d08b68",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}