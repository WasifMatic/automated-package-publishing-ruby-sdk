# Simple Calculator

```ruby
simple_calculator_controller = client.simple_calculator
```

## Class Name

`SimpleCalculatorController`


# Calculate

Calculates the expression using the specified operation.

```ruby
def calculate(operation,
              x,
              y)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `operation` | [`OperationTypeEnum`](../../doc/models/operation-type-enum.md) | Template, Required | The operator to apply on the variables |
| `x` | `Float` | Query, Required | The LHS value |
| `y` | `Float` | Query, Required | The RHS value |

## Response Type

`Float`

## Example Usage

```ruby
operation = OperationTypeEnum::SUM

x = 222.14

y = 165.14

result = simple_calculator_controller.calculate(
  operation,
  x,
  y
)
puts result
```

