{
  "version": "1.2",
  "package": {
    "name": "[ 8 ]",
    "version": "1.0",
    "description": "Combines 8 bits into a byte",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "b654261e-5469-4a43-9585-9163b9360ed3",
          "type": "basic.input",
          "data": {
            "name": "b7",
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
            "x": 368,
            "y": 144
          }
        },
        {
          "id": "104cf5f3-a3f5-43ae-806d-df99e9ef4e33",
          "type": "basic.input",
          "data": {
            "name": "b6",
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
            "x": 368,
            "y": 184
          }
        },
        {
          "id": "659c6c14-e64a-4b80-874b-22fc742dfa92",
          "type": "basic.input",
          "data": {
            "name": "b5",
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
            "x": 368,
            "y": 224
          }
        },
        {
          "id": "8702488a-62a7-48ff-bc09-8eeb45f79fa4",
          "type": "basic.input",
          "data": {
            "name": "b4",
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
            "x": 368,
            "y": 264
          }
        },
        {
          "id": "59323282-09f4-4e18-baf1-fad5232ae801",
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
            "x": 1288,
            "y": 288
          }
        },
        {
          "id": "5daa9d3e-da09-4ae4-a595-85fcac6dada5",
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
            "x": 368,
            "y": 304
          }
        },
        {
          "id": "a8c67520-65c9-4d6f-9ddc-890237ada9d5",
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
            "x": 368,
            "y": 344
          }
        },
        {
          "id": "f33f53f8-4922-4d4c-a411-13042ff00ed2",
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
            "x": 368,
            "y": 384
          }
        },
        {
          "id": "c2ef614e-5c5f-4979-b39b-312dd0b6863c",
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
            "x": 368,
            "y": 424
          }
        },
        {
          "id": "5cc20056-f41d-4dab-bf01-d28d6f03055e",
          "type": "basic.code",
          "data": {
            "code": "assign out = b0 + (b1<<1) + (b2<<2) + (b3<<3) + (b4<<4) + (b5<<5) + (b6<<6) + (b7<<7);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "b7"
                },
                {
                  "name": "b6"
                },
                {
                  "name": "b5"
                },
                {
                  "name": "b4"
                },
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
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 528,
            "y": 160
          },
          "size": {
            "width": 704,
            "height": 312
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "5cc20056-f41d-4dab-bf01-d28d6f03055e",
            "port": "out"
          },
          "target": {
            "block": "59323282-09f4-4e18-baf1-fad5232ae801",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "b654261e-5469-4a43-9585-9163b9360ed3",
            "port": "out"
          },
          "target": {
            "block": "5cc20056-f41d-4dab-bf01-d28d6f03055e",
            "port": "b7"
          }
        },
        {
          "source": {
            "block": "104cf5f3-a3f5-43ae-806d-df99e9ef4e33",
            "port": "out"
          },
          "target": {
            "block": "5cc20056-f41d-4dab-bf01-d28d6f03055e",
            "port": "b6"
          }
        },
        {
          "source": {
            "block": "659c6c14-e64a-4b80-874b-22fc742dfa92",
            "port": "out"
          },
          "target": {
            "block": "5cc20056-f41d-4dab-bf01-d28d6f03055e",
            "port": "b5"
          }
        },
        {
          "source": {
            "block": "8702488a-62a7-48ff-bc09-8eeb45f79fa4",
            "port": "out"
          },
          "target": {
            "block": "5cc20056-f41d-4dab-bf01-d28d6f03055e",
            "port": "b4"
          }
        },
        {
          "source": {
            "block": "5daa9d3e-da09-4ae4-a595-85fcac6dada5",
            "port": "out"
          },
          "target": {
            "block": "5cc20056-f41d-4dab-bf01-d28d6f03055e",
            "port": "b3"
          }
        },
        {
          "source": {
            "block": "a8c67520-65c9-4d6f-9ddc-890237ada9d5",
            "port": "out"
          },
          "target": {
            "block": "5cc20056-f41d-4dab-bf01-d28d6f03055e",
            "port": "b2"
          }
        },
        {
          "source": {
            "block": "f33f53f8-4922-4d4c-a411-13042ff00ed2",
            "port": "out"
          },
          "target": {
            "block": "5cc20056-f41d-4dab-bf01-d28d6f03055e",
            "port": "b1"
          }
        },
        {
          "source": {
            "block": "c2ef614e-5c5f-4979-b39b-312dd0b6863c",
            "port": "out"
          },
          "target": {
            "block": "5cc20056-f41d-4dab-bf01-d28d6f03055e",
            "port": "b0"
          }
        }
      ]
    }
  },
  "dependencies": {}
}