---
to: src/views/<%= h.inflection.camelize(name.replace(/\s/g, '_')) %>/<%= h.inflection.dasherize(name.toLowerCase()) %>.css
---
.<%= h.inflection.dasherize(name.toLowerCase()) %> {
  display: flex;
  flex-direction: column-reverse;
  margin-top: 1rem;
  &:first-child {
    margin-top: 0;
  }
  label {
    &::after {
      margin-left: 0.5em;
    }
  }
  input {
    border: none;
    padding: 0.5rem;
    border-bottom: 1px solid currentColor;
    &:focus {
      background: #f1f1fc;
      & + label {
        color: #5755d9;
        &:after {
          content: "↻";
        }
      }
    }
    &:not(:placeholder-shown):invalid {
      background: #fcf1f4;
      & + label {
        color: #d95560;
        &:after {
          content: "✗";
        }
      }
    }
    &:not(:placeholder-shown):valid {
      background: #f1fcf6;
      & + label {
        color: #55d98c;
        &:after {
          content: "✓";
        }
      }
    }
  }
}
 