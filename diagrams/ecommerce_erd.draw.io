<mxfile host="app.diagrams.net">
  <diagram name="Page-1" id="59LEAsmty8GqjCvig58d">
    <mxGraphModel grid="1" page="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <UserObject label="" mermaidData="{&#xa;  &quot;data&quot;: &quot;\nerDiagram\n    CUSTOMERS ||--o{ ORDERS : places\n    ORDERS ||--o{ ORDER_ITEMS : contains\n    PRODUCTS ||--o{ ORDER_ITEMS : includes\n\n    CUSTOMERS {\n        INTEGER customer_id PK\n        TEXT customer_name\n        TEXT customer_segment\n    }\n\n    PRODUCTS {\n        INTEGER product_id PK\n        TEXT product_name\n        TEXT product_category\n    }\n\n    ORDERS {\n        TEXT order_id PK\n        INTEGER customer_id FK\n        TEXT order_date\n        TEXT country\n        TEXT region\n        TEXT payment_method\n        TEXT order_month\n    }\n\n    ORDER_ITEMS {\n        INTEGER order_item_id PK\n        TEXT order_id FK\n        INTEGER product_id FK\n        INTEGER quantity\n        REAL unit_price\n        REAL discount_percent\n        REAL total_sales\n        REAL shipping_cost\n        REAL profit\n    }\n&quot;,&#xa;  &quot;config&quot;: null&#xa;}" id="M6USKsnkFF_G2qE5SCur-1">
          <mxCell connectable="0" parent="1" style="group;transparentBounds=1;editIcon=1;lockedGroup=0;groupPadding=10;" vertex="1">
            <mxGeometry as="geometry" />
          </mxCell>
        </UserObject>
        <UserObject label="CUSTOMERS" mermaidId="n:CUSTOMERS" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="CUSTOMERS" id="M6USKsnkFF_G2qE5SCur-2">
          <mxCell parent="M6USKsnkFF_G2qE5SCur-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="172" width="289" x="130" y="40" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="M6USKsnkFF_G2qE5SCur-3" parent="M6USKsnkFF_G2qE5SCur-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="289" y="43" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-4" parent="M6USKsnkFF_G2qE5SCur-3" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INTEGER" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-5" parent="M6USKsnkFF_G2qE5SCur-3" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="customer_id" vertex="1">
          <mxGeometry height="43" width="160" x="86" as="geometry">
            <mxRectangle height="43" width="160" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-6" parent="M6USKsnkFF_G2qE5SCur-3" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="43" x="246" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-7" parent="M6USKsnkFF_G2qE5SCur-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="289" y="86" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-8" parent="M6USKsnkFF_G2qE5SCur-7" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-9" parent="M6USKsnkFF_G2qE5SCur-7" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="customer_name" vertex="1">
          <mxGeometry height="43" width="160" x="86" as="geometry">
            <mxRectangle height="43" width="160" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-10" parent="M6USKsnkFF_G2qE5SCur-7" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="246" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-11" parent="M6USKsnkFF_G2qE5SCur-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="289" y="129" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-12" parent="M6USKsnkFF_G2qE5SCur-11" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-13" parent="M6USKsnkFF_G2qE5SCur-11" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="customer_segment" vertex="1">
          <mxGeometry height="43" width="160" x="86" as="geometry">
            <mxRectangle height="43" width="160" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-14" parent="M6USKsnkFF_G2qE5SCur-11" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="246" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="ORDERS" mermaidId="n:ORDERS" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="ORDERS" id="M6USKsnkFF_G2qE5SCur-15">
          <mxCell parent="M6USKsnkFF_G2qE5SCur-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="348" width="279" x="135" y="331" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="M6USKsnkFF_G2qE5SCur-16" parent="M6USKsnkFF_G2qE5SCur-15" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="279" y="43" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-17" parent="M6USKsnkFF_G2qE5SCur-16" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-18" parent="M6USKsnkFF_G2qE5SCur-16" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="order_id" vertex="1">
          <mxGeometry height="43" width="150" x="86" as="geometry">
            <mxRectangle height="43" width="150" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-19" parent="M6USKsnkFF_G2qE5SCur-16" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="43" x="236" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-20" parent="M6USKsnkFF_G2qE5SCur-15" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="279" y="86" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-21" parent="M6USKsnkFF_G2qE5SCur-20" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INTEGER" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-22" parent="M6USKsnkFF_G2qE5SCur-20" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="customer_id" vertex="1">
          <mxGeometry height="43" width="150" x="86" as="geometry">
            <mxRectangle height="43" width="150" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-23" parent="M6USKsnkFF_G2qE5SCur-20" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="43" x="236" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-24" parent="M6USKsnkFF_G2qE5SCur-15" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="279" y="129" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-25" parent="M6USKsnkFF_G2qE5SCur-24" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-26" parent="M6USKsnkFF_G2qE5SCur-24" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="order_date" vertex="1">
          <mxGeometry height="43" width="150" x="86" as="geometry">
            <mxRectangle height="43" width="150" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-27" parent="M6USKsnkFF_G2qE5SCur-24" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="236" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-28" parent="M6USKsnkFF_G2qE5SCur-15" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="47" width="279" y="172" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-29" parent="M6USKsnkFF_G2qE5SCur-28" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="47" width="86" as="geometry">
            <mxRectangle height="47" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-30" parent="M6USKsnkFF_G2qE5SCur-28" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="country" vertex="1">
          <mxGeometry height="47" width="150" x="86" as="geometry">
            <mxRectangle height="47" width="150" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-31" parent="M6USKsnkFF_G2qE5SCur-28" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="47" width="43" x="236" as="geometry">
            <mxRectangle height="47" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-32" parent="M6USKsnkFF_G2qE5SCur-15" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="279" y="219" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-33" parent="M6USKsnkFF_G2qE5SCur-32" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-34" parent="M6USKsnkFF_G2qE5SCur-32" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="region" vertex="1">
          <mxGeometry height="43" width="150" x="86" as="geometry">
            <mxRectangle height="43" width="150" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-35" parent="M6USKsnkFF_G2qE5SCur-32" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="236" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-36" parent="M6USKsnkFF_G2qE5SCur-15" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="279" y="262" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-37" parent="M6USKsnkFF_G2qE5SCur-36" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-38" parent="M6USKsnkFF_G2qE5SCur-36" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="payment_method" vertex="1">
          <mxGeometry height="43" width="150" x="86" as="geometry">
            <mxRectangle height="43" width="150" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-39" parent="M6USKsnkFF_G2qE5SCur-36" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="236" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-40" parent="M6USKsnkFF_G2qE5SCur-15" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="279" y="305" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-41" parent="M6USKsnkFF_G2qE5SCur-40" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-42" parent="M6USKsnkFF_G2qE5SCur-40" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="order_month" vertex="1">
          <mxGeometry height="43" width="150" x="86" as="geometry">
            <mxRectangle height="43" width="150" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-43" parent="M6USKsnkFF_G2qE5SCur-40" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="236" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="ORDER_ITEMS" mermaidId="n:ORDER_ITEMS" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="ORDER_ITEMS" id="M6USKsnkFF_G2qE5SCur-44">
          <mxCell parent="M6USKsnkFF_G2qE5SCur-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="430" width="278" x="315" y="794" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="M6USKsnkFF_G2qE5SCur-45" parent="M6USKsnkFF_G2qE5SCur-44" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="278" y="43" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-46" parent="M6USKsnkFF_G2qE5SCur-45" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INTEGER" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-47" parent="M6USKsnkFF_G2qE5SCur-45" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="order_item_id" vertex="1">
          <mxGeometry height="43" width="149" x="86" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-48" parent="M6USKsnkFF_G2qE5SCur-45" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="43" x="235" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-49" parent="M6USKsnkFF_G2qE5SCur-44" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="278" y="86" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-50" parent="M6USKsnkFF_G2qE5SCur-49" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-51" parent="M6USKsnkFF_G2qE5SCur-49" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="order_id" vertex="1">
          <mxGeometry height="43" width="149" x="86" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-52" parent="M6USKsnkFF_G2qE5SCur-49" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="43" x="235" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-53" parent="M6USKsnkFF_G2qE5SCur-44" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="278" y="129" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-54" parent="M6USKsnkFF_G2qE5SCur-53" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INTEGER" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-55" parent="M6USKsnkFF_G2qE5SCur-53" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="product_id" vertex="1">
          <mxGeometry height="43" width="149" x="86" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-56" parent="M6USKsnkFF_G2qE5SCur-53" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="43" x="235" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-57" parent="M6USKsnkFF_G2qE5SCur-44" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="278" y="172" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-58" parent="M6USKsnkFF_G2qE5SCur-57" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INTEGER" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-59" parent="M6USKsnkFF_G2qE5SCur-57" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="quantity" vertex="1">
          <mxGeometry height="43" width="149" x="86" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-60" parent="M6USKsnkFF_G2qE5SCur-57" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="235" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-61" parent="M6USKsnkFF_G2qE5SCur-44" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="278" y="215" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-62" parent="M6USKsnkFF_G2qE5SCur-61" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="REAL" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-63" parent="M6USKsnkFF_G2qE5SCur-61" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="unit_price" vertex="1">
          <mxGeometry height="43" width="149" x="86" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-64" parent="M6USKsnkFF_G2qE5SCur-61" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="235" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-65" parent="M6USKsnkFF_G2qE5SCur-44" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="278" y="258" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-66" parent="M6USKsnkFF_G2qE5SCur-65" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="REAL" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-67" parent="M6USKsnkFF_G2qE5SCur-65" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="discount_percent" vertex="1">
          <mxGeometry height="43" width="149" x="86" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-68" parent="M6USKsnkFF_G2qE5SCur-65" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="235" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-69" parent="M6USKsnkFF_G2qE5SCur-44" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="278" y="301" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-70" parent="M6USKsnkFF_G2qE5SCur-69" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="REAL" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-71" parent="M6USKsnkFF_G2qE5SCur-69" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="total_sales" vertex="1">
          <mxGeometry height="43" width="149" x="86" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-72" parent="M6USKsnkFF_G2qE5SCur-69" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="235" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-73" parent="M6USKsnkFF_G2qE5SCur-44" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="278" y="344" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-74" parent="M6USKsnkFF_G2qE5SCur-73" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="REAL" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-75" parent="M6USKsnkFF_G2qE5SCur-73" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="shipping_cost" vertex="1">
          <mxGeometry height="43" width="149" x="86" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-76" parent="M6USKsnkFF_G2qE5SCur-73" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="235" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-77" parent="M6USKsnkFF_G2qE5SCur-44" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="278" y="387" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-78" parent="M6USKsnkFF_G2qE5SCur-77" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="REAL" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-79" parent="M6USKsnkFF_G2qE5SCur-77" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="profit" vertex="1">
          <mxGeometry height="43" width="149" x="86" as="geometry">
            <mxRectangle height="43" width="149" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-80" parent="M6USKsnkFF_G2qE5SCur-77" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="235" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="PRODUCTS" mermaidId="n:PRODUCTS" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="PRODUCTS" id="M6USKsnkFF_G2qE5SCur-81">
          <mxCell parent="M6USKsnkFF_G2qE5SCur-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="172" width="280" x="494" y="417" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="M6USKsnkFF_G2qE5SCur-82" parent="M6USKsnkFF_G2qE5SCur-81" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="280" y="43" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-83" parent="M6USKsnkFF_G2qE5SCur-82" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INTEGER" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-84" parent="M6USKsnkFF_G2qE5SCur-82" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="product_id" vertex="1">
          <mxGeometry height="43" width="151" x="86" as="geometry">
            <mxRectangle height="43" width="151" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-85" parent="M6USKsnkFF_G2qE5SCur-82" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="43" x="237" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-86" parent="M6USKsnkFF_G2qE5SCur-81" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="280" y="86" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-87" parent="M6USKsnkFF_G2qE5SCur-86" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-88" parent="M6USKsnkFF_G2qE5SCur-86" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="product_name" vertex="1">
          <mxGeometry height="43" width="151" x="86" as="geometry">
            <mxRectangle height="43" width="151" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-89" parent="M6USKsnkFF_G2qE5SCur-86" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="237" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-90" parent="M6USKsnkFF_G2qE5SCur-81" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="280" y="129" as="geometry" />
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-91" parent="M6USKsnkFF_G2qE5SCur-90" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="86" as="geometry">
            <mxRectangle height="43" width="86" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-92" parent="M6USKsnkFF_G2qE5SCur-90" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="product_category" vertex="1">
          <mxGeometry height="43" width="151" x="86" as="geometry">
            <mxRectangle height="43" width="151" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="M6USKsnkFF_G2qE5SCur-93" parent="M6USKsnkFF_G2qE5SCur-90" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="237" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="places" mermaidId="e:CUSTOMERS-&gt;ORDERS#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.5;entryY=0;" mermaidBaseValue="places" id="M6USKsnkFF_G2qE5SCur-94">
          <mxCell edge="1" parent="M6USKsnkFF_G2qE5SCur-1" source="M6USKsnkFF_G2qE5SCur-2" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.5;entryY=0;rounded=0;" target="M6USKsnkFF_G2qE5SCur-15">
            <mxGeometry relative="1" as="geometry" />
          </mxCell>
        </UserObject>
        <UserObject label="contains" mermaidId="e:ORDERS-&gt;ORDER_ITEMS#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.16;entryY=0;" mermaidBaseValue="contains" id="M6USKsnkFF_G2qE5SCur-95">
          <mxCell edge="1" parent="M6USKsnkFF_G2qE5SCur-1" source="M6USKsnkFF_G2qE5SCur-15" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.16;entryY=0;rounded=0;" target="M6USKsnkFF_G2qE5SCur-44">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="275" y="735" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="includes" mermaidId="e:PRODUCTS-&gt;ORDER_ITEMS#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;" mermaidBaseValue="includes" id="M6USKsnkFF_G2qE5SCur-96">
          <mxCell edge="1" parent="M6USKsnkFF_G2qE5SCur-1" source="M6USKsnkFF_G2qE5SCur-81" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;rounded=0;" target="M6USKsnkFF_G2qE5SCur-44">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="634" y="692" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
