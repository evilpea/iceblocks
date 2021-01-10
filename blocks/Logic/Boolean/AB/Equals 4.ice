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
          "id": "e24832b8-0b21-4cef-8f87-17ec95d929e3",
          "type": "basic.input",
          "data": {
            "name": "a",
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
          "id": "45e1b7fb-5f89-4acc-b657-fb517a3e5ae1",
          "type": "basic.input",
          "data": {
            "name": "b",
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
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "b",
                  "range": "[3:0]",
                  "size": 4
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
            "block": "258c8cc8-404d-40ad-9d39-3a8145d97839",
            "port": "eq"
          },
          "target": {
            "block": "67dc3da8-bd88-424a-aa22-1741b23a534e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e24832b8-0b21-4cef-8f87-17ec95d929e3",
            "port": "out"
          },
          "target": {
            "block": "258c8cc8-404d-40ad-9d39-3a8145d97839",
            "port": "a"
          },
          "size": 4
        },
        {
          "source": {
            "block": "45e1b7fb-5f89-4acc-b657-fb517a3e5ae1",
            "port": "out"
          },
          "target": {
            "block": "258c8cc8-404d-40ad-9d39-3a8145d97839",
            "port": "b"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {}
}