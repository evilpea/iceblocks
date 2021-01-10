{
  "version": "1.2",
  "package": {
    "name": "+",
    "version": "1.0",
    "description": "Adds A + B",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "d28a77f4-8998-4985-acb5-058d1d828a3d",
          "type": "basic.input",
          "data": {
            "name": "a",
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
            "x": 696,
            "y": 344
          }
        },
        {
          "id": "d022a4db-8c3a-4e5a-bcca-b13538f10c97",
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
            "x": 1160,
            "y": 376
          }
        },
        {
          "id": "f0bc3a7f-0abd-47d1-acdf-583b4ef50996",
          "type": "basic.input",
          "data": {
            "name": "b",
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
            "x": 696,
            "y": 408
          }
        },
        {
          "id": "cc571fff-a365-4306-8d23-50ce65efe846",
          "type": "basic.code",
          "data": {
            "code": "// Add\nassign out = a + b;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "a",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "b",
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
            "x": 856,
            "y": 344
          },
          "size": {
            "width": 264,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d28a77f4-8998-4985-acb5-058d1d828a3d",
            "port": "out"
          },
          "target": {
            "block": "cc571fff-a365-4306-8d23-50ce65efe846",
            "port": "a"
          },
          "size": 8
        },
        {
          "source": {
            "block": "f0bc3a7f-0abd-47d1-acdf-583b4ef50996",
            "port": "out"
          },
          "target": {
            "block": "cc571fff-a365-4306-8d23-50ce65efe846",
            "port": "b"
          },
          "size": 8
        },
        {
          "source": {
            "block": "cc571fff-a365-4306-8d23-50ce65efe846",
            "port": "out"
          },
          "target": {
            "block": "d022a4db-8c3a-4e5a-bcca-b13538f10c97",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}