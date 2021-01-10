{
  "version": "1.2",
  "package": {
    "name": "=",
    "version": "1.0",
    "description": "Returns 1 if inputs A and B are equal",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "86fed4db-91c9-4802-9140-bd666b3f14e1",
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
            "x": 448,
            "y": 200
          }
        },
        {
          "id": "67dc3da8-bd88-424a-aa22-1741b23a534e",
          "type": "basic.output",
          "data": {
            "name": "eq",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 896,
            "y": 248
          }
        },
        {
          "id": "f11fc309-6848-4990-811f-5344271d1fa9",
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
            "x": 448,
            "y": 288
          }
        },
        {
          "id": "258c8cc8-404d-40ad-9d39-3a8145d97839",
          "type": "basic.code",
          "data": {
            "code": "assign eq = a == b;\n",
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
                  "name": "eq"
                }
              ]
            }
          },
          "position": {
            "x": 616,
            "y": 192
          },
          "size": {
            "width": 240,
            "height": 168
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "f11fc309-6848-4990-811f-5344271d1fa9",
            "port": "out"
          },
          "target": {
            "block": "258c8cc8-404d-40ad-9d39-3a8145d97839",
            "port": "b"
          },
          "size": 8
        },
        {
          "source": {
            "block": "86fed4db-91c9-4802-9140-bd666b3f14e1",
            "port": "out"
          },
          "target": {
            "block": "258c8cc8-404d-40ad-9d39-3a8145d97839",
            "port": "a"
          },
          "size": 8
        },
        {
          "source": {
            "block": "258c8cc8-404d-40ad-9d39-3a8145d97839",
            "port": "eq"
          },
          "target": {
            "block": "67dc3da8-bd88-424a-aa22-1741b23a534e",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}