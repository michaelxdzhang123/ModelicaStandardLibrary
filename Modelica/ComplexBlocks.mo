within Modelica;
package ComplexBlocks
  "Library of basic input/output control blocks (continuous, discrete, logical, table blocks)"
extends Modelica.Icons.Library2;

  package Interfaces
    "Library of connectors and partial models for input/output blocks"
    extends Modelica.Icons.Library;

  connector ComplexInput = input Complex "'input Complex' as connector" 
    annotation (defaultComponentName="u",
    Icon(graphics={Polygon(
            points={{-100,100},{100,0},{-100,-100},{-100,100}},
            lineColor={0,127,0},
            fillColor={0,127,0},
            fillPattern=FillPattern.Solid)},
         coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.2)),
    Diagram(coordinateSystem(
          preserveAspectRatio=true, initialScale=0.2,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Polygon(
            points={{0,50},{100,0},{0,-50},{0,50}},
            lineColor={0,127,0},
            fillColor={0,127,0},
            fillPattern=FillPattern.Solid), Text(
            extent={{-10,85},{-10,60}},
            lineColor={0,0,127},
            textString="%name")}),
      Documentation(info="<html>
<p>
Connector with one input signal of type Complex.
</p>
</html>"));

  connector ComplexOutput = output Complex "'output Complex' as connector" 
    annotation (defaultComponentName="y",
    Icon(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Polygon(
            points={{-100,100},{100,0},{-100,-100},{-100,100}},
            lineColor={0,127,0},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Polygon(
            points={{-100,50},{0,0},{-100,-50},{-100,50}},
            lineColor={0,127,0},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid), Text(
            extent={{30,110},{30,60}},
            lineColor={0,0,127},
            textString="%name")}),
      Documentation(info="<html>
<p>
Connector with one output signal of type Complex.
</p>
</html>"));

      partial block ComplexSO "Single Output continuous control block"
        extends Blocks.Interfaces.BlockIcon;
        ComplexOutput y "Connector of Complex output signal" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=0)));
        annotation (Documentation(info="<html>
<p>
Block has one continuous Complex output signal.
</p>
</html>"));
      end ComplexSO;

      partial block ComplexMO "Multiple Output continuous control block"
        extends Blocks.Interfaces.BlockIcon;
        parameter Integer nout(min=1) = 1 "Number of outputs";
        ComplexOutput y[nout] "Connector of Complex output signals" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=0)));
        annotation (Documentation(info="<html>
<p>
Block has one continuous Complex output signal vector.
</p>
</html>"));
      end ComplexMO;

      partial block ComplexSISO
      "Single Input Single Output continuous control block"
        extends Blocks.Interfaces.BlockIcon;
        ComplexInput u "Connector of Complex input signal" 
          annotation (Placement(transformation(extent={{-140,-20},{-100,20}}, rotation=0)));
        ComplexOutput y "Connector of Complex output signal" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=0)));
        annotation (Documentation(info="<html>
<p>
Block has one continuous Complex input and one continuous Complex output signal.
</p>
</html>"));
      end ComplexSISO;

      partial block ComplexSI2SO
      "2 Single Input / 1 Single Output continuous control block"
        extends Blocks.Interfaces.BlockIcon;
        ComplexInput u1 "Connector of Complex input signal 1" 
          annotation (Placement(transformation(extent={{-140,40},{-100,80}}, rotation=0)));
        ComplexInput u2 "Connector of Complex input signal 2" 
          annotation (Placement(transformation(extent={{-140,-80},{-100,-40}}, rotation=0)));
        ComplexOutput y "Connector of Complex output signal" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=0)));
        annotation (Documentation(info="<html>
<p>
Block has two continuous Complex input signals u1 and u2 and one
continuous Complex output signal y.
</p>
</html>"));
      end ComplexSI2SO;

      partial block ComplexSIMO
      "Single Input Multiple Output continuous control block"
        extends Blocks.Interfaces.BlockIcon;
        parameter Integer nout=1 "Number of outputs";
        ComplexInput u "Connector of Complex input signal" 
          annotation (Placement(transformation(extent={{-140,-20},{-100,20}}, rotation=0)));
        ComplexOutput y[nout] "Connector of Complex output signals" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=0)));
        annotation (Documentation(info="<html>
<p>
 Block has one continuous Complex input signal and a
vector of continuous Complex output signals.
</p>
</html>"));
      end ComplexSIMO;

      partial block ComplexMISO
      "Multiple Input Single Output continuous control block"
        extends Blocks.Interfaces.BlockIcon;
        parameter Integer nin=1 "Number of inputs";
        ComplexInput u[nin] "Connector of Complex input signals" 
          annotation (Placement(transformation(extent={{-140,-20},{-100,20}}, rotation=0)));
        ComplexOutput y "Connector of Complex output signal" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=0)));
        annotation (Documentation(info="<html>
<p>
Block has a vector of continuous Complex input signals and
one continuous Complex output signal.
</p>
</html>"));
      end ComplexMISO;

      partial block ComplexMIMO
      "Multiple Input Multiple Output continuous control block"
        extends Blocks.Interfaces.BlockIcon;
        parameter Integer nin=1 "Number of inputs";
        parameter Integer nout=1 "Number of outputs";
        ComplexInput u[nin] "Connector of Complex input signals" 
          annotation (Placement(transformation(extent={{-140,-20},{-100,20}}, rotation=0)));
        ComplexOutput y[nout] "Connector of Complex output signals" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=0)));
        annotation (Documentation(info="<html>
<p>
Block has a continuous Complex input vector and a continuous Complex output signal vector.
The signal sizes of the input and output vector may be different.
</p>
</html>"));
      end ComplexMIMO;

      partial block ComplexMIMOs
      "Multiple Input Multiple Output continuous control block with same number of inputs and outputs"
        extends Blocks.Interfaces.BlockIcon;
        parameter Integer n=1 "Number of inputs (= number of outputs)";
        ComplexInput u[n] "Connector of Complex input signals" 
          annotation (Placement(transformation(extent={{-140,-20},{-100,20}}, rotation=0)));
        ComplexOutput y[n] "Connector of Complex output signals" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=0)));
        annotation (Documentation(info="<html>
<p>
Block has a continuous Complex input vector and a continuous Complex output signal vector
where the signal sizes of the input and output vector are identical.
</p>
</html>"));
      end ComplexMIMOs;

      partial block ComplexMI2MO
      "2 Multiple Input / Multiple Output continuous control block"
        extends Blocks.Interfaces.BlockIcon;
        parameter Integer n=1 "Dimension of input and output vectors.";
        ComplexInput u1[n] "Connector 1 of Complex input signals" 
          annotation (Placement(transformation(extent={{-140,40},{-100,80}}, rotation=0)));
        ComplexInput u2[n] "Connector 2 of Complex input signals" 
          annotation (Placement(transformation(extent={{-140,-80},{-100,-40}}, rotation=0)));
        ComplexOutput y[n] "Connector of Complex output signals" 
          annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=0)));
        annotation (Documentation(info="<html>
<p>
Block has two continuous Complex input vectors u1 and u2 and one
continuous Complex output vector y.
All vectors have the same number of elements.
</p>
</html>"));
      end ComplexMI2MO;
  end Interfaces;

  package ComplexMath
    "Library of mathematical functions as input/output blocks"
    extends Modelica.Icons.Library;

        block Gain "Output the product of a gain value with the input signal"

          parameter Complex k(re(start=1), im(start=0))
        "Gain value multiplied with input signal";
    public
          Interfaces.ComplexInput u "Input signal connector" 
            annotation (Placement(transformation(extent={{-140,-20},{-100,20}},
              rotation=0)));
          Interfaces.ComplexOutput y "Output signal connector" 
            annotation (Placement(transformation(extent={{100,-10},{120,10}},
              rotation=0)));

        equation
        //y = k*u;
          y = Complex.'*'.multiply(k, u);
          annotation (
            Documentation(info="
<HTML>
<p>
This block computes output <i>y</i> as
<i>product</i> of gain <i>k</i> with the
input <i>u</i>:
</p>
<pre>
    y = k * u;
</pre>

</HTML>
"),         Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Polygon(
              points={{-100,-100},{-100,100},{100,0},{-100,-100}},
              lineColor={0,0,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-150,-140},{150,-100}},
              lineColor={0,0,0},
              textString="k=%k"),
            Text(
              extent={{-150,140},{150,100}},
              textString="%name",
              lineColor={0,0,255})}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={Polygon(
              points={{-100,-100},{-100,100},{100,0},{-100,-100}},
              lineColor={0,0,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid), Text(
              extent={{-76,38},{0,-34}},
              textString="k",
              lineColor={0,0,255})}));
        end Gain;

        block Sum "Output the sum of the elements of the input vector"
          extends Interfaces.ComplexMISO;
          parameter Complex k[nin]=fill(Complex(1,0), nin)
        "Optional: sum coefficients";
        equation
        //y = k*u;
          y = Complex.'*'.scalarProduct(k, u);
          annotation (defaultComponentName="sum1",
            Documentation(info="
<HTML>
<p>
This blocks computes output <b>y</b> as
<i>sum</i> of the elements of the input signal vector
<b>u</b>:
</p>
<pre>
    <b>y</b> = <b>u</b>[1] + <b>u</b>[2] + ...;
</pre>
<p>
Example:
</p>
<pre>
     parameter:   nin = 3;

  results in the following equations:

     y = u[1] + u[2] + u[3];
</pre>

</HTML>
"),         Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={Line(
              points={{26,42},{-34,42},{6,2},{-34,-38},{26,-38}},
              color={0,0,0},
              thickness=0.25), Text(
              extent={{-150,150},{150,110}},
              textString="%name",
              lineColor={0,0,255})}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid), Line(
              points={{26,42},{-34,42},{6,2},{-34,-38},{26,-38}},
              color={0,0,0},
              thickness=0.25)}));
        end Sum;

        block Feedback "Output difference between commanded and feedback input"

          Interfaces.ComplexInput u1 annotation (Placement(transformation(
              extent={{-100,-20},{-60,20}}, rotation=0)));
          Interfaces.ComplexInput u2 
            annotation (Placement(transformation(
            origin={0,-80},
            extent={{-20,-20},{20,20}},
            rotation=90)));
          Interfaces.ComplexOutput y annotation (Placement(transformation(
              extent={{80,-10},{100,10}}, rotation=0)));

        equation
        //y = u1 - u2;
          y = Complex.'-'.subtract(u1, u2);
          annotation (
            Documentation(info="
<HTML>
<p>
This blocks computes output <b>y</b> as <i>difference</i> of the
commanded input <b>u1</b> and the feedback
input <b>u2</b>:
</p>
<pre>
    <b>y</b> = <b>u1</b> - <b>u2</b>;
</pre>
<p>
Example:
</p>
<pre>
     parameter:   n = 2

  results in the following equations:

     y = u1 - u2
</pre>

</HTML>
"),         Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Ellipse(
              extent={{-20,20},{20,-20}},
              lineColor={0,0,127},
              fillColor={235,235,235},
              fillPattern=FillPattern.Solid),
            Line(points={{-60,0},{-20,0}}, color={0,0,127}),
            Line(points={{20,0},{80,0}}, color={0,0,127}),
            Line(points={{0,-20},{0,-60}}, color={0,0,127}),
            Text(
              extent={{-14,0},{82,-94}},
              lineColor={0,0,0},
              textString="-"),
            Text(
              extent={{-150,94},{150,44}},
              textString="%name",
              lineColor={0,0,255})}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Ellipse(
              extent={{-20,20},{20,-20}},
              pattern=LinePattern.Solid,
              lineThickness=0.25,
              fillColor={235,235,235},
              fillPattern=FillPattern.Solid,
              lineColor={0,0,255}),
            Line(points={{-60,0},{-20,0}}, color={0,0,255}),
            Line(points={{20,0},{80,0}}, color={0,0,255}),
            Line(points={{0,-20},{0,-60}}, color={0,0,255}),
            Text(
              extent={{-12,10},{84,-84}},
              lineColor={0,0,0},
              textString="-")}));
        end Feedback;

        block Add "Output the sum of the two inputs"
          extends Interfaces.ComplexSI2SO;
          parameter Complex k1=Complex(1,0) "Gain of upper input";
          parameter Complex k2=Complex(1,0) "Gain of lower input";

        equation
        //y = k1*u1 + k2*u2;
          y = Complex.'*'.multiply(k1, u2) + Complex.'*'.multiply(k2, u2);
          annotation (
            Documentation(info="
<HTML>
<p>
This blocks computes output <b>y</b> as <i>sum</i> of the
two input signals <b>u1</b> and <b>u2</b>:
</p>
<pre>
    <b>y</b> = k1*<b>u1</b> + k2*<b>u2</b>;
</pre>
<p>
Example:
</p>
<pre>
     parameter:   k1= +2, k2= -3

  results in the following equations:

     y = 2 * u1 - 3 * u2
</pre>

</HTML>
"),         Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Text(
              extent={{-98,-52},{7,-92}},
              lineColor={0,0,0},
              textString="%k2"),
            Text(
              extent={{-100,90},{5,50}},
              lineColor={0,0,0},
              textString="%k1"),
            Text(
              extent={{-150,150},{150,110}},
              textString="%name",
              lineColor={0,0,255}),
            Line(points={{-100,60},{-40,60},{-30,40}}, color={0,0,255}),
            Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,255}),
            Line(points={{-100,-60},{-40,-60},{-30,-40}}, color={0,0,255}),
            Line(points={{-15,-25.99},{15,25.99}}, color={0,0,0}),
            Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{50,0},{100,0}}, color={0,0,255}),
            Line(points={{-100,60},{-74,24},{-44,24}}, color={0,0,127}),
            Line(points={{-100,-60},{-74,-28},{-42,-28}}, color={0,0,127}),
            Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,127}),
            Line(points={{50,0},{100,0}}, color={0,0,127}),
            Text(
              extent={{-38,34},{38,-34}},
              lineColor={0,0,0},
              textString="+"),
            Text(
              extent={{-100,52},{5,92}},
              lineColor={0,0,0},
              textString="%k1"),
            Text(
              extent={{-100,-52},{5,-92}},
              lineColor={0,0,0},
              textString="%k2")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-98,-52},{7,-92}},
              lineColor={0,0,0},
              textString="%k2"),
            Text(
              extent={{-100,90},{5,50}},
              lineColor={0,0,0},
              textString="%k1"),
            Line(points={{-100,60},{-40,60},{-30,40}}, color={0,0,255}),
            Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,255}),
            Line(points={{-100,-60},{-40,-60},{-30,-40}}, color={0,0,255}),
            Line(points={{-15,-25.99},{15,25.99}}, color={0,0,0}),
            Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{50,0},{100,0}}, color={0,0,255}),
            Line(points={{-100,60},{-74,24},{-44,24}}, color={0,0,127}),
            Line(points={{-100,-60},{-74,-28},{-42,-28}}, color={0,0,127}),
            Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,127}),
            Line(points={{50,0},{100,0}}, color={0,0,127}),
            Text(
              extent={{-38,34},{38,-34}},
              lineColor={0,0,0},
              textString="+"),
            Text(
              extent={{-100,52},{5,92}},
              lineColor={0,0,0},
              textString="k1"),
            Text(
              extent={{-100,-52},{5,-92}},
              lineColor={0,0,0},
              textString="k2")}));
        end Add;

        block Add3 "Output the sum of the three inputs"
          extends Blocks.Interfaces.BlockIcon;

          parameter Complex k1=Complex(1,0) "Gain of upper input";
          parameter Complex k2=Complex(1,0) "Gain of middle input";
          parameter Complex k3=Complex(1,0) "Gain of lower input";
          Interfaces.ComplexInput u1 "Connector 1 of Complex input signals" 
            annotation (Placement(transformation(extent={{-140,60},{-100,100}},
              rotation=0)));
          Interfaces.ComplexInput u2 "Connector 2 of Complex input signals" 
            annotation (Placement(transformation(extent={{-140,-20},{-100,20}},
              rotation=0)));
          Interfaces.ComplexInput u3 "Connector 3 of Complex input signals" 
            annotation (Placement(transformation(extent={{-140,-100},{-100,-60}},
              rotation=0)));
          Interfaces.ComplexOutput y "Connector of Complex output signals" 
            annotation (Placement(transformation(extent={{100,-10},{120,10}},
              rotation=0)));

        equation
        //y = k1*u1 + k2*u2 + k3*u3;
          y = Complex.'*'.multiply(k1, u2) + Complex.'*'.multiply(k2, u2) + Complex.'*'.multiply(k3, u3);
          annotation (
            Documentation(info="
<HTML>
<p>
This blocks computes output <b>y</b> as <i>sum</i> of the
three input signals <b>u1</b>, <b>u2</b> and <b>u3</b>:
</p>
<pre>
    <b>y</b> = k1*<b>u1</b> + k2*<b>u2</b> + k3*<b>u3</b>;
</pre>
<p>
Example:
</p>
<pre>
     parameter:   k1= +2, k2= -3, k3=1;

  results in the following equations:

     y = 2 * u1 - 3 * u2 + u3;
</pre>

</HTML>
"),         Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Text(
              extent={{-100,50},{5,90}},
              lineColor={0,0,0},
              textString="%k1"),
            Text(
              extent={{-100,-20},{5,20}},
              lineColor={0,0,0},
              textString="%k2"),
            Text(
              extent={{-100,-50},{5,-90}},
              lineColor={0,0,0},
              textString="%k3"),
            Text(
              extent={{2,36},{100,-44}},
              lineColor={0,0,0},
              textString="+")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-100,50},{5,90}},
              lineColor={0,0,0},
              textString="%k1"),
            Text(
              extent={{-100,-20},{5,20}},
              lineColor={0,0,0},
              textString="%k2"),
            Text(
              extent={{-100,-50},{5,-90}},
              lineColor={0,0,0},
              textString="%k3"),
            Text(
              extent={{2,36},{100,-44}},
              lineColor={0,0,0},
              textString="+"),
            Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-100,50},{5,90}},
              lineColor={0,0,0},
              textString="k1"),
            Text(
              extent={{-100,-20},{5,20}},
              lineColor={0,0,0},
              textString="k2"),
            Text(
              extent={{-100,-50},{5,-90}},
              lineColor={0,0,0},
              textString="k3"),
            Text(
              extent={{2,36},{100,-44}},
              lineColor={0,0,0},
              textString="+")}));
        end Add3;

        block Product "Output product of the two inputs"
          extends Interfaces.ComplexSI2SO;

        equation
        //y = u1*u2;
          y = Complex.'*'.multiply(u1,u2);
          annotation (
            Documentation(info="
<HTML>
<p>
This blocks computes the output <b>y</b> (element-wise)
as <i>product</i> of the corresponding elements of
the two inputs <b>u1</b> and <b>u2</b>:
</p>
<pre>
    y = u1 * u2;
</pre>

</HTML>
"),         Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-100,60},{-40,60},{-30,40}}, color={0,0,127}),
            Line(points={{-100,-60},{-40,-60},{-30,-40}}, color={0,0,127}),
            Line(points={{50,0},{100,0}}, color={0,0,127}),
            Line(points={{-30,0},{30,0}}, color={0,0,0}),
            Line(points={{-15,25.99},{15,-25.99}}, color={0,0,0}),
            Line(points={{-15,-25.99},{15,25.99}}, color={0,0,0}),
            Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,127})}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,60},{-40,60},{-30,40}}, color={0,0,255}),
            Line(points={{-100,-60},{-40,-60},{-30,-40}}, color={0,0,255}),
            Line(points={{50,0},{100,0}}, color={0,0,255}),
            Line(points={{-30,0},{30,0}}, color={0,0,0}),
            Line(points={{-15,25.99},{15,-25.99}}, color={0,0,0}),
            Line(points={{-15,-25.99},{15,25.99}}, color={0,0,0}),
            Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,255})}));
        end Product;

        block Division "Output first input divided by second input"
          extends Interfaces.ComplexSI2SO;

        equation
        //y = u1/u2;
          y = Complex.'/'(u1, u2);
          annotation (
            Documentation(info="
<HTML>
<p>
This block computes the output <b>y</b> (element-wise)
by <i>dividing</i> the corresponding elements of
the two inputs <b>u1</b> and <b>u2</b>:
</p>
<pre>
    y = u1 / u2;
</pre>

</HTML>
"),         Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{50,0},{100,0}}, color={0,0,127}),
            Line(points={{-30,0},{30,0}}, color={0,0,0}),
            Ellipse(
              extent={{-5,20},{5,30}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-5,-20},{5,-30}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,127}),
            Text(
              extent={{-150,150},{150,110}},
              textString="%name",
              lineColor={0,0,255}),
            Line(points={{-100,60},{-66,60},{-40,30}}, color={0,0,127}),
            Line(points={{-100,-60},{0,-60},{0,-50}}, color={0,0,127})}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{50,0},{100,0}}, color={0,0,255}),
            Line(points={{-30,0},{30,0}}, color={0,0,0}),
            Ellipse(
              extent={{-5,20},{5,30}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-5,-20},{5,-30}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,255}),
            Line(points={{-100,60},{-66,60},{-40,30}}, color={0,0,255}),
            Line(points={{-100,-60},{0,-60},{0,-50}}, color={0,0,255})}));
        end Division;

        block Sqrt "Output the square root of the input (input >= 0 required)"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.'sqrt'(u);
          annotation (defaultComponentName="sqrt1",
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-90,-80},{68,-80}}, color={192,192,192}),
            Polygon(
              points={{90,-80},{68,-72},{68,-88},{90,-80}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-79.2,-68.7},{-78.4,-64},{-76.8,-57.3},{-73.6,
                  -47.9},{-67.9,-36.1},{-59.1,-22.2},{-46.2,-6.49},{-28.5,10.7},{
                  -4.42,30},{27.7,51.3},{69.5,74.7},{80,80}}, color={0,0,0}),
            Polygon(
              points={{-80,90},{-88,68},{-72,68},{-80,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-88},{-80,68}}, color={192,192,192}),
            Text(
              extent={{-8,-4},{64,-52}},
              lineColor={192,192,192},
              textString="sqrt")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-92,-80},{84,-80}}, color={192,192,192}),
            Polygon(
              points={{100,-80},{84,-74},{84,-86},{100,-80}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-79.2,-68.7},{-78.4,-64},{-76.8,-57.3},{-73.6,
                  -47.9},{-67.9,-36.1},{-59.1,-22.2},{-46.2,-6.49},{-28.5,10.7},{
                  -4.42,30},{27.7,51.3},{69.5,74.7},{80,80}}, color={0,0,0}),
            Polygon(
              points={{-80,98},{-86,82},{-74,82},{-80,98}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-90},{-80,84}}, color={192,192,192}),
            Text(
              extent={{-71,98},{-44,78}},
              lineColor={160,160,164},
              textString="y"),
            Text(
              extent={{60,-52},{84,-72}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b>
as <i>square root</i> of the input <b>u</b>:
</p>
<pre>
    y = <b>sqrt</b>( u );
</pre>
<p>
All elements of the input vector shall be zero or positive.
Otherwise an error occurs.
</p>

</HTML>
"));
        end Sqrt;

        block Sin "Output the sine of the input"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.sin(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Polygon(
              points={{-80,90},{-88,68},{-72,68},{-80,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-80,68}}, color={192,192,192}),
            Line(points={{-90,0},{68,0}}, color={192,192,192}),
            Line(points={{-80,0},{-68.7,34.2},{-61.5,53.1},{-55.1,66.4},{-49.4,
                  74.6},{-43.8,79.1},{-38.2,79.8},{-32.6,76.6},{-26.9,69.7},{-21.3,
                  59.4},{-14.9,44.1},{-6.83,21.2},{10.1,-30.8},{17.3,-50.2},{23.7,
                  -64.2},{29.3,-73.1},{35,-78.4},{40.6,-80},{46.2,-77.6},{51.9,-71.5},
                  {57.5,-61.9},{63.9,-47.2},{72,-24.8},{80,0}}, color={0,0,0}),
            Polygon(
              points={{90,0},{68,8},{68,-8},{90,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{12,84},{84,36}},
              lineColor={192,192,192},
              textString="sin")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-80,80},{-88,80}}, color={192,192,192}),
            Line(points={{-80,-80},{-88,-80}}, color={192,192,192}),
            Line(points={{-80,-90},{-80,84}}, color={192,192,192}),
            Text(
              extent={{-75,98},{-46,78}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{-80,96},{-86,80},{-74,80},{-80,96}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,0},{84,0}}, color={192,192,192}),
            Polygon(
              points={{100,0},{84,6},{84,-6},{100,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,0},{-68.7,34.2},{-61.5,53.1},{-55.1,66.4},{-49.4,
                  74.6},{-43.8,79.1},{-38.2,79.8},{-32.6,76.6},{-26.9,69.7},{-21.3,
                  59.4},{-14.9,44.1},{-6.83,21.2},{10.1,-30.8},{17.3,-50.2},{23.7,
                  -64.2},{29.3,-73.1},{35,-78.4},{40.6,-80},{46.2,-77.6},{51.9,-71.5},
                  {57.5,-61.9},{63.9,-47.2},{72,-24.8},{80,0}}, color={0,0,0}),
            Text(
              extent={{-105,72},{-85,88}},
              textString="1",
              lineColor={0,0,255}),
            Text(
              extent={{70,25},{90,5}},
              textString="2*pi",
              lineColor={0,0,255}),
            Text(
              extent={{-105,-72},{-85,-88}},
              textString="-1",
              lineColor={0,0,255}),
            Text(
              extent={{76,-10},{98,-30}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b>
as <b>sine</b> of the input <b>u</b>:
</p>
<pre>
    y = <b>sin</b>( u );
</pre>

<p>
<img src=\"../Images/Math/sin.png\">
</p>

</HTML>
"));
        end Sin;

        block Cos "Output the cosine of the input"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.cos(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Polygon(
              points={{-80,90},{-88,68},{-72,68},{-80,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-80,68}}, color={192,192,192}),
            Line(points={{-90,0},{68,0}}, color={192,192,192}),
            Polygon(
              points={{90,0},{68,8},{68,-8},{90,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,80},{-74.4,78.1},{-68.7,72.3},{-63.1,63},{-56.7,
                  48.7},{-48.6,26.6},{-29.3,-32.5},{-22.1,-51.7},{-15.7,-65.3},{-10.1,
                  -73.8},{-4.42,-78.8},{1.21,-79.9},{6.83,-77.1},{12.5,-70.6},{
                  18.1,-60.6},{24.5,-45.7},{32.6,-23},{50.3,31.3},{57.5,50.7},{
                  63.9,64.6},{69.5,73.4},{75.2,78.6},{80,80}}, color={0,0,0}),
            Text(
              extent={{-36,82},{36,34}},
              lineColor={192,192,192},
              textString="cos")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-80,80},{-88,80}}, color={192,192,192}),
            Line(points={{-80,-80},{-88,-80}}, color={192,192,192}),
            Line(points={{-80,-90},{-80,84}}, color={192,192,192}),
            Text(
              extent={{-75,102},{-48,82}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{-80,100},{-86,84},{-74,84},{-80,100}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-103,72},{-83,88}},
              textString="1",
              lineColor={0,0,255}),
            Text(
              extent={{-79,-72},{-59,-88}},
              textString="-1",
              lineColor={0,0,255}),
            Text(
              extent={{70,25},{90,5}},
              textString="2*pi",
              lineColor={0,0,255}),
            Line(points={{-100,0},{84,0}}, color={192,192,192}),
            Polygon(
              points={{100,0},{84,6},{84,-6},{100,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,80},{-74.4,78.1},{-68.7,72.3},{-63.1,63},{-56.7,
                  48.7},{-48.6,26.6},{-29.3,-32.5},{-22.1,-51.7},{-15.7,-65.3},{-10.1,
                  -73.8},{-4.42,-78.8},{1.21,-79.9},{6.83,-77.1},{12.5,-70.6},{
                  18.1,-60.6},{24.5,-45.7},{32.6,-23},{50.3,31.3},{57.5,50.7},{
                  63.9,64.6},{69.5,73.4},{75.2,78.6},{80,80}}, color={0,0,0}),
            Text(
              extent={{74,-4},{98,-24}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b>
as <b>cos</b> of the input <b>u</b>:
</p>
<pre>
    y = <b>cos</b>( u );
</pre>

<p>
<img src=\"../Images/Math/cos.png\">
</p>

</HTML>
"));
        end Cos;

        block Tan "Output the tangent of the input"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.tan(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Polygon(
              points={{0,90},{-8,68},{8,68},{0,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{0,-80},{0,68}}, color={192,192,192}),
            Line(points={{-80,-80},{-78.4,-68.4},{-76.8,-59.7},{-74.4,-50},{-71.2,
                  -40.9},{-67.1,-33},{-60.7,-24.8},{-51.1,-17.2},{-35.8,-9.98},{-4.42,
                  -1.07},{33.4,9.12},{49.4,16.2},{59.1,23.2},{65.5,30.6},{70.4,
                  39.1},{73.6,47.4},{76,56.1},{77.6,63.8},{80,80}}, color={0,0,0}),
            Line(points={{-90,0},{68,0}}, color={192,192,192}),
            Polygon(
              points={{90,0},{68,8},{68,-8},{90,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-90,72},{-18,24}},
              lineColor={192,192,192},
              textString="tan")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{0,80},{-8,80}}, color={192,192,192}),
            Line(points={{0,-80},{-8,-80}}, color={192,192,192}),
            Line(points={{0,-88},{0,86}}, color={192,192,192}),
            Text(
              extent={{11,100},{38,80}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{0,102},{-6,86},{6,86},{0,102}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-37,-72},{-17,-88}},
              textString="-5.8",
              lineColor={0,0,255}),
            Text(
              extent={{-33,86},{-13,70}},
              textString=" 5.8",
              lineColor={0,0,255}),
            Text(
              extent={{70,25},{90,5}},
              textString="1.4",
              lineColor={0,0,255}),
            Line(points={{-100,0},{84,0}}, color={192,192,192}),
            Polygon(
              points={{100,0},{84,6},{84,-6},{100,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-78.4,-68.4},{-76.8,-59.7},{-74.4,-50},{-71.2,
                  -40.9},{-67.1,-33},{-60.7,-24.8},{-51.1,-17.2},{-35.8,-9.98},{-4.42,
                  -1.07},{33.4,9.12},{49.4,16.2},{59.1,23.2},{65.5,30.6},{70.4,
                  39.1},{73.6,47.4},{76,56.1},{77.6,63.8},{80,80}}, color={0,0,0}),
            Text(
              extent={{70,-6},{94,-26}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b>
as <b>tan</b> of the input <b>u</b>:
</p>
<pre>
    y = <b>tan</b>( u );
</pre>

<p>
<img src=\"../Images/Math/tan.png\">
</p>

</HTML>
"));
        end Tan;

        block Asin "Output the arc sine of the input"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.asin(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Polygon(
              points={{0,90},{-8,68},{8,68},{0,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{0,-80},{0,68}}, color={192,192,192}),
            Line(points={{-80,-80},{-79.2,-72.8},{-77.6,-67.5},{-73.6,-59.4},{-66.3,
                  -49.8},{-53.5,-37.3},{-30.2,-19.7},{37.4,24.8},{57.5,40.8},{
                  68.7,52.7},{75.2,62.2},{77.6,67.5},{80,80}}, color={0,0,0}),
            Line(points={{-90,0},{68,0}}, color={192,192,192}),
            Polygon(
              points={{90,0},{68,8},{68,-8},{90,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-88,78},{-16,30}},
              lineColor={192,192,192},
              textString="asin")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{0,80},{-8,80}}, color={192,192,192}),
            Line(points={{0,-80},{-8,-80}}, color={192,192,192}),
            Line(points={{0,-90},{0,84}}, color={192,192,192}),
            Text(
              extent={{9,102},{36,82}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{0,100},{-6,84},{6,84},{0,100}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-40,-72},{-15,-88}},
              textString="-pi/2",
              lineColor={0,0,255}),
            Text(
              extent={{-38,88},{-13,72}},
              textString=" pi/2",
              lineColor={0,0,255}),
            Text(
              extent={{70,25},{90,5}},
              textString="+1",
              lineColor={0,0,255}),
            Text(
              extent={{-90,21},{-70,1}},
              textString="-1",
              lineColor={0,0,255}),
            Line(points={{-100,0},{84,0}}, color={192,192,192}),
            Polygon(
              points={{100,0},{84,6},{84,-6},{100,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-79.2,-72.8},{-77.6,-67.5},{-73.6,-59.4},{-66.3,
                  -49.8},{-53.5,-37.3},{-30.2,-19.7},{37.4,24.8},{57.5,40.8},{
                  68.7,52.7},{75.2,62.2},{77.6,67.5},{80,80}}, color={0,0,0}),
            Text(
              extent={{74,-4},{100,-26}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b> as the
<i>sine-inverse</i> of the input <b>u</b>:
</p>
<pre>
    y = <b>asin</b>( u );
</pre>
<p>
The absolute values of the elements of the input <b>u</b> need to
be less or equal to one (<b>abs</b>( u ) <= 1).
Otherwise an error occurs.
</p>

<p>
<img src=\"../Images/Math/asin.png\">
</p>

</HTML>
"));
        end Asin;

        block Acos "Output the arc cosine of the input"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.acos(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Polygon(
              points={{0,90},{-8,68},{8,68},{0,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,80},{-79.2,72.8},{-77.6,67.5},{-73.6,59.4},{-66.3,
                  49.8},{-53.5,37.3},{-30.2,19.7},{37.4,-24.8},{57.5,-40.8},{68.7,
                  -52.7},{75.2,-62.2},{77.6,-67.5},{80,-80}}, color={0,0,0}),
            Line(points={{0,-88},{0,68}}, color={192,192,192}),
            Line(points={{-90,-80},{68,-80}}, color={192,192,192}),
            Polygon(
              points={{90,-80},{68,-72},{68,-88},{90,-80}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-86,-14},{-14,-62}},
              lineColor={192,192,192},
              textString="acos")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{0,80},{-8,80}}, color={192,192,192}),
            Line(points={{0,-80},{-8,-80}}, color={192,192,192}),
            Line(points={{0,-90},{0,84}}, color={192,192,192}),
            Text(
              extent={{13,100},{42,82}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{0,100},{-6,84},{6,84},{0,100}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,-80},{84,-80}}, color={192,192,192}),
            Polygon(
              points={{100,-80},{84,-74},{84,-86},{100,-80}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,80},{-79.2,72.8},{-77.6,67.5},{-73.6,59.4},{-66.3,
                  49.8},{-53.5,37.3},{-30.2,19.7},{37.4,-24.8},{57.5,-40.8},{68.7,
                  -52.7},{75.2,-62.2},{77.6,-67.5},{80,-80}}, color={0,0,0}),
            Text(
              extent={{-30,88},{-5,72}},
              textString=" pi",
              lineColor={0,0,255}),
            Text(
              extent={{-94,-57},{-74,-77}},
              textString="-1",
              lineColor={0,0,255}),
            Text(
              extent={{80,-45},{100,-65}},
              textString="+1",
              lineColor={0,0,255}),
            Text(
              extent={{76,-84},{102,-102}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b> as the
<i>cosine-inverse</i> of the input <b>u</b>:
</p>
<pre>
    y = <b>acos</b>( u );
</pre>
<p>
The absolute values of the elements of the input <b>u</b> need to
be less or equal to one (<b>abs</b>( u ) <= 1).
Otherwise an error occurs.
</p>

<p>
<img src=\"../Images/Math/acos.png\">
</p>

</HTML>
"));
        end Acos;

        block Atan "Output the arc tangent of the input"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.atan(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Polygon(
              points={{0,90},{-8,68},{8,68},{0,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{0,-80},{0,68}}, color={192,192,192}),
            Line(points={{-80,-80},{-52.7,-75.2},{-37.4,-69.7},{-26.9,-63},{-19.7,
                  -55.2},{-14.1,-45.8},{-10.1,-36.4},{-6.03,-23.9},{-1.21,-5.06},
                  {5.23,21},{9.25,34.1},{13.3,44.2},{18.1,52.9},{24.5,60.8},{33.4,
                  67.6},{47,73.6},{69.5,78.6},{80,80}}, color={0,0,0}),
            Line(points={{-90,0},{68,0}}, color={192,192,192}),
            Polygon(
              points={{90,0},{68,8},{68,-8},{90,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-86,68},{-14,20}},
              lineColor={192,192,192},
              textString="atan")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{0,80},{-8,80}}, color={192,192,192}),
            Line(points={{0,-80},{-8,-80}}, color={192,192,192}),
            Line(points={{0,-90},{0,84}}, color={192,192,192}),
            Text(
              extent={{13,102},{42,82}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{0,100},{-6,84},{6,84},{0,100}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,0},{84,0}}, color={192,192,192}),
            Polygon(
              points={{100,0},{84,6},{84,-6},{100,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-52.7,-75.2},{-37.4,-69.7},{-26.9,-63},{-19.7,
                  -55.2},{-14.1,-45.8},{-10.1,-36.4},{-6.03,-23.9},{-1.21,-5.06},
                  {5.23,21},{9.25,34.1},{13.3,44.2},{18.1,52.9},{24.5,60.8},{33.4,
                  67.6},{47,73.6},{69.5,78.6},{80,80}}, color={0,0,0}),
            Text(
              extent={{-32,91},{-12,71}},
              textString="1.4",
              lineColor={0,0,255}),
            Text(
              extent={{-32,-71},{-12,-91}},
              textString="-1.4",
              lineColor={0,0,255}),
            Text(
              extent={{73,26},{93,10}},
              textString=" 5.8",
              lineColor={0,0,255}),
            Text(
              extent={{-103,20},{-83,4}},
              textString="-5.8",
              lineColor={0,0,255}),
            Text(
              extent={{66,-8},{94,-28}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b> as the
<i>tangent-inverse</i> of the input <b>u</b>:
</p>
<pre>
    y= <b>atan</b>( u );
</pre>

<p>
<img src=\"../Images/Math/atan.png\">
</p>

</HTML>
"));
        end Atan;

        block Sinh "Output the hyperbolic sine of the input"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.sinh(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Polygon(
              points={{0,90},{-8,68},{8,68},{0,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-86,80},{-14,32}},
              lineColor={192,192,192},
              textString="sinh"),
            Line(points={{0,-80},{0,68}}, color={192,192,192}),
            Line(points={{-90,0},{68,0}}, color={192,192,192}),
            Line(points={{-80,-80},{-76,-65.4},{-71.2,-51.4},{-65.5,-38.8},{-59.1,
                  -28.1},{-51.1,-18.7},{-41.4,-11.4},{-27.7,-5.5},{-4.42,-0.653},
                  {24.5,4.57},{39,10.1},{49.4,17.2},{57.5,25.9},{63.9,35.8},{69.5,
                  47.4},{74.4,60.4},{78.4,73.8},{80,80}}, color={0,0,0}),
            Polygon(
              points={{90,0},{68,8},{68,-8},{90,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid)}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{0,80},{-8,80}}, color={192,192,192}),
            Line(points={{0,-80},{-8,-80}}, color={192,192,192}),
            Line(points={{0,-90},{0,84}}, color={192,192,192}),
            Text(
              extent={{9,98},{34,78}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{0,100},{-6,84},{6,84},{0,100}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,0},{84,0}}, color={192,192,192}),
            Polygon(
              points={{100,0},{84,6},{84,-6},{100,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-76,-65.4},{-71.2,-51.4},{-65.5,-38.8},{-59.1,
                  -28.1},{-51.1,-18.7},{-41.4,-11.4},{-27.7,-5.5},{-4.42,-0.653},
                  {24.5,4.57},{39,10.1},{49.4,17.2},{57.5,25.9},{63.9,35.8},{69.5,
                  47.4},{74.4,60.4},{78.4,73.8},{80,80}}, color={0,0,0}),
            Text(
              extent={{-31,72},{-11,88}},
              textString="27",
              lineColor={0,0,255}),
            Text(
              extent={{-35,-88},{-15,-72}},
              textString="-27",
              lineColor={0,0,255}),
            Text(
              extent={{70,25},{90,5}},
              textString="4",
              lineColor={0,0,255}),
            Text(
              extent={{-98,21},{-78,1}},
              textString="-4",
              lineColor={0,0,255}),
            Text(
              extent={{72,-6},{96,-26}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b> as the
<i>hyperbolic sine</i> of the input <b>u</b>:
</p>
<pre>
    y = <b>sinh</b>( u );
</pre>

<p>
<img src=\"../Images/Math/sinh.png\">
</p>

</HTML>
"));
        end Sinh;

        block Cosh "Output the hyperbolic cosine of the input"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.cosh(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Polygon(
              points={{0,90},{-8,68},{8,68},{0,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{0,-80},{0,68}}, color={192,192,192}),
            Text(
              extent={{4,66},{66,20}},
              lineColor={192,192,192},
              textString="cosh"),
            Line(points={{-80,80},{-77.6,61.1},{-74.4,39.3},{-71.2,20.7},{-67.1,
                  1.29},{-63.1,-14.6},{-58.3,-29.8},{-52.7,-43.5},{-46.2,-55.1},{
                  -39,-64.3},{-30.2,-71.7},{-18.9,-77.1},{-4.42,-79.9},{10.9,-79.1},
                  {23.7,-75.2},{34.2,-68.7},{42.2,-60.6},{48.6,-51.2},{54.3,-40},
                  {59.1,-27.5},{63.1,-14.6},{67.1,1.29},{71.2,20.7},{74.4,39.3},{
                  77.6,61.1},{80,80}}, color={0,0,0}),
            Line(points={{-90,-86.083},{68,-86.083}}, color={192,192,192}),
            Polygon(
              points={{90,-86.083},{68,-78.083},{68,-94.083},{90,-86.083}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid)}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{0,80},{-8,80}}, color={192,192,192}),
            Line(points={{0,-80},{-8,-80}}, color={192,192,192}),
            Line(points={{0,-90},{0,84}}, color={192,192,192}),
            Text(
              extent={{11,98},{38,78}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{0,100},{-6,84},{6,84},{0,100}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,-86.083},{84,-86.083}}, color={192,192,192}),
            Polygon(
              points={{100,-86.083},{84,-80.083},{84,-92.083},{100,-86.083}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,80},{-77.6,61.1},{-74.4,39.3},{-71.2,20.7},{-67.1,
                  1.29},{-63.1,-14.6},{-58.3,-29.8},{-52.7,-43.5},{-46.2,-55.1},{
                  -39,-64.3},{-30.2,-71.7},{-18.9,-77.1},{-4.42,-79.9},{10.9,-79.1},
                  {23.7,-75.2},{34.2,-68.7},{42.2,-60.6},{48.6,-51.2},{54.3,-40},
                  {59.1,-27.5},{63.1,-14.6},{67.1,1.29},{71.2,20.7},{74.4,39.3},{
                  77.6,61.1},{80,80}}, color={0,0,0}),
            Text(
              extent={{-31,72},{-11,88}},
              textString="27",
              lineColor={0,0,255}),
            Text(
              extent={{62,-67},{82,-87}},
              textString="4",
              lineColor={0,0,255}),
            Text(
              extent={{-104,-63},{-84,-83}},
              textString="-4",
              lineColor={0,0,255}),
            Text(
              extent={{78,-54},{100,-74}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b> as the
<i>hyperbolic cosine</i> of the input <b>u</b>:
</p>
<pre>
    y = <b>cosh</b>( u );
</pre>

<p>
<img src=\"../Images/Math/cosh.png\">
</p>

</HTML>
"));
        end Cosh;

        block Tanh "Output the hyperbolic tangent of the input"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.tanh(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{0,-90},{0,84}}, color={192,192,192}),
            Line(points={{-100,0},{84,0}}, color={192,192,192}),
            Line(points={{-80,-80},{-47.8,-78.7},{-35.8,-75.7},{-27.7,-70.6},{-22.1,
                  -64.2},{-17.3,-55.9},{-12.5,-44.3},{-7.64,-29.2},{-1.21,-4.82},
                  {6.83,26.3},{11.7,42},{16.5,54.2},{21.3,63.1},{26.9,69.9},{34.2,
                  75},{45.4,78.4},{72,79.9},{80,80}}, color={0,0,0}),
            Polygon(
              points={{0,90},{-8,68},{8,68},{0,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-88,72},{-16,24}},
              lineColor={192,192,192},
              textString="tanh"),
            Polygon(
              points={{90,0},{68,8},{68,-8},{90,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid)}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{0,80},{-8,80}}, color={192,192,192}),
            Line(points={{0,-80},{-8,-80}}, color={192,192,192}),
            Line(points={{0,-90},{0,84}}, color={192,192,192}),
            Text(
              extent={{9,98},{42,80}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{0,100},{-6,84},{6,84},{0,100}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,0},{84,0}}, color={192,192,192}),
            Polygon(
              points={{100,0},{84,6},{84,-6},{100,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-47.8,-78.7},{-35.8,-75.7},{-27.7,-70.6},{-22.1,
                  -64.2},{-17.3,-55.9},{-12.5,-44.3},{-7.64,-29.2},{-1.21,-4.82},
                  {6.83,26.3},{11.7,42},{16.5,54.2},{21.3,63.1},{26.9,69.9},{34.2,
                  75},{45.4,78.4},{72,79.9},{80,80}}, color={0,0,0}),
            Text(
              extent={{70,25},{90,5}},
              textString="4",
              lineColor={0,0,255}),
            Text(
              extent={{-106,21},{-86,1}},
              textString="-4",
              lineColor={0,0,255}),
            Text(
              extent={{-29,72},{-9,88}},
              textString="1",
              lineColor={0,0,255}),
            Text(
              extent={{3,-72},{23,-88}},
              textString="-1",
              lineColor={0,0,255}),
            Text(
              extent={{72,-8},{98,-26}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b> as the
<i>hyperbolic tangent</i> of the input <b>u</b>:
</p>
<pre>
    y = <b>tanh</b>( u );
</pre>

<p>
<img src=\"../Images/Math/tanh.png\">
</p>

</HTML>
"));
        end Tanh;

        block Exp "Output the exponential (base e) of the input"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.exp(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{0,-80},{0,68}}, color={192,192,192}),
            Polygon(
              points={{0,90},{-8,68},{8,68},{0,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-86,50},{-14,2}},
              lineColor={192,192,192},
              textString="exp"),
            Line(points={{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},
                  {34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{
                  67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color={0,0,0}),
            Line(points={{-90,-80.3976},{68,-80.3976}}, color={192,192,192}),
            Polygon(
              points={{90,-80.3976},{68,-72.3976},{68,-88.3976},{90,-80.3976}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid)}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{0,80},{-8,80}}, color={192,192,192}),
            Line(points={{0,-80},{-8,-80}}, color={192,192,192}),
            Line(points={{0,-90},{0,84}}, color={192,192,192}),
            Text(
              extent={{9,100},{40,80}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{0,100},{-6,84},{6,84},{0,100}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,-80.3976},{84,-80.3976}}, color={192,192,192}),
            Polygon(
              points={{100,-80.3976},{84,-74.3976},{84,-86.3976},{100,-80.3976}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-31,-77.9},{-6.03,-74},{10.9,-68.4},{23.7,-61},
                  {34.2,-51.6},{43,-40.3},{50.3,-27.8},{56.7,-13.5},{62.3,2.23},{
                  67.1,18.6},{72,38.2},{76,57.6},{80,80}}, color={0,0,0}),
            Text(
              extent={{-31,72},{-11,88}},
              textString="20",
              lineColor={0,0,255}),
            Text(
              extent={{-92,-83},{-72,-103}},
              textString="-3",
              lineColor={0,0,255}),
            Text(
              extent={{70,-83},{90,-103}},
              textString="3",
              lineColor={0,0,255}),
            Text(
              extent={{-18,-53},{2,-73}},
              textString="1",
              lineColor={0,0,255}),
            Text(
              extent={{66,-52},{96,-72}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b> as the
<i>exponential</i> (of base e) of the input <b>u</b>:
</p>
<pre>
    y = <b>exp</b>( u );
</pre>

<p>
<img src=\"../Images/Math/exp.png\">
</p>

</HTML>
"));
        end Exp;

        block Log
      "Output the natural (base e) logarithm of the input (input > 0 required)"
          extends Interfaces.ComplexSISO;
        equation
          y = Modelica.ComplexMath.log(u);
          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-80,-80},{-80,68}}, color={192,192,192}),
            Polygon(
              points={{-80,90},{-88,68},{-72,68},{-80,90}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-79.2,-50.6},{-78.4,-37},{-77.6,-28},{-76.8,-21.3},
                  {-75.2,-11.4},{-72.8,-1.31},{-69.5,8.08},{-64.7,17.9},{-57.5,28},
                  {-47,38.1},{-31.8,48.1},{-10.1,58},{22.1,68},{68.7,78.1},{80,80}},
                color={0,0,0}),
            Line(points={{-90,0},{68,0}}, color={192,192,192}),
            Polygon(
              points={{90,0},{68,8},{68,-8},{90,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-6,-24},{66,-72}},
              lineColor={192,192,192},
              textString="log")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-80,80},{-88,80}}, color={192,192,192}),
            Line(points={{-80,-80},{-88,-80}}, color={192,192,192}),
            Line(points={{-80,-90},{-80,84}}, color={192,192,192}),
            Text(
              extent={{-67,98},{-40,80}},
              lineColor={160,160,164},
              textString="y"),
            Polygon(
              points={{-80,100},{-86,84},{-74,84},{-80,100}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,0},{84,0}}, color={192,192,192}),
            Polygon(
              points={{100,0},{84,6},{84,-6},{100,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{-80,-80},{-79.2,-50.6},{-78.4,-37},{-77.6,-28},{-76.8,-21.3},
                  {-75.2,-11.4},{-72.8,-1.31},{-69.5,8.08},{-64.7,17.9},{-57.5,28},
                  {-47,38.1},{-31.8,48.1},{-10.1,58},{22.1,68},{68.7,78.1},{80,80}},
                color={0,0,0}),
            Text(
              extent={{-105,72},{-85,88}},
              textString="3",
              lineColor={0,0,255}),
            Text(
              extent={{-109,-88},{-89,-72}},
              textString="-3",
              lineColor={0,0,255}),
            Text(
              extent={{70,-3},{90,-23}},
              textString="20",
              lineColor={0,0,255}),
            Text(
              extent={{-78,-1},{-58,-21}},
              textString="1",
              lineColor={0,0,255}),
            Text(
              extent={{68,28},{94,8}},
              lineColor={160,160,164},
              textString="u")}),
            Documentation(info="<HTML>
<p>
This blocks computes the output <b>y</b> as the
<i>natural (base e) logarithm</i> of the input <b>u</b>:
</p>
<pre>
    y = <b>log</b>( u );
</pre>
<p>
An error occurs if the elements of the input <b>u</b> are
zero or negative.
</p>

<p>
<img src=\"../Images/Math/log.png\">
</p>

</HTML>
"));
        end Log;
    annotation (
      Documentation(info="
<HTML>
<p>
This package contains basic <b>mathematical operations</b>,
such as summation and multiplication, and basic <b>mathematical
functions</b>, such as <b>sqrt</b> and <b>sin</b>, as
input/output blocks. All blocks of this library can be either
connected with continuous blocks or with sampled-data blocks.
</p>
</HTML>
",   revisions="<html>
<ul>
<li><i>January 28, 2010</i>
       by <a href=\"http://www.haumer.at/\">Anton Haumer</a>
</li>
</ul>
</html>"));
  end ComplexMath;
 annotation (Icon(graphics={
      Rectangle(extent={{-32,-6},{16,-35}}, lineColor={0,0,0}),
      Polygon(
        points={{-32,-21},{-46,-17},{-46,-25},{-32,-21}},
        lineColor={0,0,0},
        fillColor={0,0,0},
        fillPattern=FillPattern.Solid),
      Line(points={{-32,-72},{-64,-72},{-64,-21},{-32,-21}}, color={0,0,0}),
      Rectangle(extent={{-32,-56},{16,-85}}, lineColor={0,0,0}),
      Polygon(
        points={{16,-71},{29,-67},{29,-74},{16,-71}},
        lineColor={0,0,0},
        fillColor={0,0,0},
        fillPattern=FillPattern.Solid),
      Line(points={{16,-20},{49,-20},{49,-71},{16,-71}}, color={0,0,0})}));
end ComplexBlocks;
