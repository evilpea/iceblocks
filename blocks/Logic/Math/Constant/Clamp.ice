{
  "version": "1.2",
  "package": {
    "name": "CLAMP",
    "version": "1.0",
    "description": "Min and Max",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "576e50fb-c0fe-4321-8eb1-4b59a8c0ba85",
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
            "x": 416,
            "y": 424
          }
        },
        {
          "id": "db2f85b5-0b7a-4d00-becf-a22197dacb6f",
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
            "x": 1032,
            "y": 424
          }
        },
        {
          "id": "a6c736d8-7a33-441a-8d99-1431ee528246",
          "type": "basic.constant",
          "data": {
            "name": "min",
            "value": "",
            "local": false
          },
          "position": {
            "x": 608,
            "y": 312
          }
        },
        {
          "id": "14fb17f1-7a17-40e5-a55f-230d1828b191",
          "type": "basic.constant",
          "data": {
            "name": "max",
            "value": "",
            "local": false
          },
          "position": {
            "x": 832,
            "y": 312
          }
        },
        {
          "id": "f9384be0-cefc-4852-b0cf-da5314de50c7",
          "type": "ea38a1c397f9354bae1248476c75db9b594104cd",
          "position": {
            "x": 832,
            "y": 424
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "6fd896ae-e5de-4bbf-ae2a-fd34c489b264",
          "type": "a7284e653b5771e7c7918201ed1dfccca0e6c461",
          "position": {
            "x": 608,
            "y": 424
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "576e50fb-c0fe-4321-8eb1-4b59a8c0ba85",
            "port": "out"
          },
          "target": {
            "block": "6fd896ae-e5de-4bbf-ae2a-fd34c489b264",
            "port": "0a840a87-2bb1-4160-8738-1c11c1896c61"
          },
          "size": 8
        },
        {
          "source": {
            "block": "6fd896ae-e5de-4bbf-ae2a-fd34c489b264",
            "port": "1a0450db-e566-4aa8-87d5-477471bf9e5f"
          },
          "target": {
            "block": "f9384be0-cefc-4852-b0cf-da5314de50c7",
            "port": "0a840a87-2bb1-4160-8738-1c11c1896c61"
          },
          "size": 8
        },
        {
          "source": {
            "block": "f9384be0-cefc-4852-b0cf-da5314de50c7",
            "port": "1a0450db-e566-4aa8-87d5-477471bf9e5f"
          },
          "target": {
            "block": "db2f85b5-0b7a-4d00-becf-a22197dacb6f",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "14fb17f1-7a17-40e5-a55f-230d1828b191",
            "port": "constant-out"
          },
          "target": {
            "block": "f9384be0-cefc-4852-b0cf-da5314de50c7",
            "port": "38695643-414d-4e2a-8664-ee7128bd399a"
          }
        },
        {
          "source": {
            "block": "a6c736d8-7a33-441a-8d99-1431ee528246",
            "port": "constant-out"
          },
          "target": {
            "block": "6fd896ae-e5de-4bbf-ae2a-fd34c489b264",
            "port": "38695643-414d-4e2a-8664-ee7128bd399a"
          }
        }
      ]
    }
  },
  "dependencies": {
    "ea38a1c397f9354bae1248476c75db9b594104cd": {
      "package": {
        "name": "MAX",
        "version": "1.0",
        "description": "Max ",
        "author": "EvilPea <evilpea3@gmail.com>",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "0a840a87-2bb1-4160-8738-1c11c1896c61",
              "type": "basic.input",
              "data": {
                "name": "in",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 0,
                "y": 128
              }
            },
            {
              "id": "1a0450db-e566-4aa8-87d5-477471bf9e5f",
              "type": "basic.output",
              "data": {
                "name": "out",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 552,
                "y": 128
              }
            },
            {
              "id": "38695643-414d-4e2a-8664-ee7128bd399a",
              "type": "basic.constant",
              "data": {
                "name": "max",
                "value": "",
                "local": false
              },
              "position": {
                "x": 280,
                "y": -16
              }
            },
            {
              "id": "a039027d-2da0-4031-8ec3-af3621b86703",
              "type": "basic.code",
              "data": {
                "code": "assign out = (in > max) ? max : in;",
                "params": [
                  {
                    "name": "max"
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
                "x": 160,
                "y": 96
              },
              "size": {
                "width": 336,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "0a840a87-2bb1-4160-8738-1c11c1896c61",
                "port": "out"
              },
              "target": {
                "block": "a039027d-2da0-4031-8ec3-af3621b86703",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "a039027d-2da0-4031-8ec3-af3621b86703",
                "port": "out"
              },
              "target": {
                "block": "1a0450db-e566-4aa8-87d5-477471bf9e5f",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "38695643-414d-4e2a-8664-ee7128bd399a",
                "port": "constant-out"
              },
              "target": {
                "block": "a039027d-2da0-4031-8ec3-af3621b86703",
                "port": "max"
              }
            }
          ]
        }
      }
    },
    "a7284e653b5771e7c7918201ed1dfccca0e6c461": {
      "package": {
        "name": "MIN",
        "version": "1.0",
        "description": "Min",
        "author": "EvilPea <evilpea3@gmail.com>",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "0a840a87-2bb1-4160-8738-1c11c1896c61",
              "type": "basic.input",
              "data": {
                "name": "in",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 0,
                "y": 128
              }
            },
            {
              "id": "1a0450db-e566-4aa8-87d5-477471bf9e5f",
              "type": "basic.output",
              "data": {
                "name": "out",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 552,
                "y": 128
              }
            },
            {
              "id": "38695643-414d-4e2a-8664-ee7128bd399a",
              "type": "basic.constant",
              "data": {
                "name": "min",
                "value": "",
                "local": false
              },
              "position": {
                "x": 280,
                "y": -16
              }
            },
            {
              "id": "a039027d-2da0-4031-8ec3-af3621b86703",
              "type": "basic.code",
              "data": {
                "code": "assign out = (in < min) ? min : in;",
                "params": [
                  {
                    "name": "min"
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
                "x": 160,
                "y": 96
              },
              "size": {
                "width": 336,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "0a840a87-2bb1-4160-8738-1c11c1896c61",
                "port": "out"
              },
              "target": {
                "block": "a039027d-2da0-4031-8ec3-af3621b86703",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "a039027d-2da0-4031-8ec3-af3621b86703",
                "port": "out"
              },
              "target": {
                "block": "1a0450db-e566-4aa8-87d5-477471bf9e5f",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "38695643-414d-4e2a-8664-ee7128bd399a",
                "port": "constant-out"
              },
              "target": {
                "block": "a039027d-2da0-4031-8ec3-af3621b86703",
                "port": "min"
              }
            }
          ]
        }
      }
    }
  }
}