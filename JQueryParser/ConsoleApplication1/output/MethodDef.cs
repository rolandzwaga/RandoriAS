﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1.output
{
    class MethodDef:MemberDef
    {
        public List<ParamDef> parameters { get; set; }

        public MethodDef():base()
        {
            parameters = new List<ParamDef>();
            attributes = new JsAttributes() { type = AttributeTypes.Method };
        }
        
        new protected void SerializeComments(StringBuilder sb)
        {
            if ((comments.Count() > 0) || (parameters.Count() > 0))
            {
                sb.AppendLine("\t\t/*");
                comments.ForEach(c => sb.AppendLine("\t\t * " + c));
                parameters.ForEach(p => SerializeParamComments(sb, p));
                sb.AppendLine("\t\t*/");
            }
        }

        new public void Serialize(StringBuilder sb)
        {
            sb.Append("\t\t");
            attributes.Serialize(sb);
            sb.Append(Environment.NewLine);
            SerializeComments(sb);
            var StaticDecl = (isStatic) ? " static " : " ";
            sb.AppendLine("\t\tpublic" + StaticDecl + "function " + name + "(" + SerializeParameters() + "):" + type);
            sb.AppendLine("\t\t{");
            if (type != "void")
            {
                sb.AppendLine("\t\t\treturn null;");
            }
            sb.AppendLine("\t\t}");
        }

        private void SerializeParamComments(StringBuilder sb, ParamDef parameter)
        {
            sb.AppendLine("\t\t * @param " + parameter.name + " " + parameter.comments[0]);
        }

        private string SerializeParameters()
        {
            var sb = new StringBuilder();
            var index = 0;
            foreach (var parameter in parameters)
            {
                if (index++ > 0)
                {
                    sb.Append(", ");
                }
                parameter.Serialize(sb);
            }
            return sb.ToString();
        }
    }
}
