CREATE (:Jobs_to_Be_Done {name: 'Jobs to Be Done'})
CREATE (:Size {name: 'Size'})
CREATE (:Value_Systems {name: 'Value Systems'})
CREATE (:Opportunities {name: 'Opportunities'})
CREATE (:Market_Space {name: 'Market Space'})
CREATE (:Market_Space_Attributes {name: 'Market Space Attributes'})
CREATE (:Buyer_Structure {name: 'Buyer Structure'})
CREATE (:Customer_Needs {name: 'Customer Needs'})
CREATE (:Attractiveness {name: 'Attractiveness'})
CREATE (:Scope_of_Offerings {name: 'Scope of Offerings'})
CREATE (:Customer {name: 'Customer'})
CREATE (:Threats {name: 'Threats'})
CREATE (:Opportunity_Quantification {name: 'Opportunity Quantification'})
CREATE (:Customer_Segments {name: 'Customer Segments'})
CREATE (:Companys_Competitors {name: 'Company\'s Competitors'})
CREATE (:Competitor_Entities {name: 'Competitor Entities'})
CREATE (:Distinctive_Choices {name: 'Distinctive Choices'})
CREATE (:End_User {name: 'End User'})
CREATE (:Porters_Five_Forces {name: 'Porter\'s Five Forces'})
CREATE (:Role_Qualifiers {name: 'Role Qualifiers'})
CREATE (:Competitor_Clusters {name: 'Competitor Clusters'})
CREATE (:Customers_Needs {name: 'Customers\' Needs'})
CREATE (:Industry_Classification {name: 'Industry Classification'})
CREATE (:Causal_Relationships {name: 'Causal Relationships'})
CREATE (:Time_Series_Data {name: 'Time-Series Data'})
CREATE (:Geographic_Regions {name: 'Geographic Regions'})
CREATE (:Product_Service_Categories {name: 'Product/Service Categories'})
CREATE (:Distribution_Channels {name: 'Distribution Channels'})
CREATE (:PESTEL_Analysis {name: 'PESTEL Analysis'})
CREATE (:Channels {name: 'Channels'})
CREATE (:External_Factors {name: 'External Factors'})
CREATE (:Trend_Based_Projection {name: 'Trend-Based Projection'})
CREATE (:Supplier_Structure {name: 'Supplier Structure'})
CREATE (:Market_Participation {name: 'Market Participation'})
CREATE (:Competitors {name: 'Competitors'})
CREATE (:Regulatory_Constraints {name: 'Regulatory Constraints'})
CREATE (:Threat_Quantification {name: 'Threat Quantification'})
CREATE (:Product_Service_Category {name: 'Product/Service Category'})
;

MATCH (a:Market_Space_Attributes {name: 'Market Space Attributes'}), (b:Size {name: 'Size'}) CREATE (a)-[:INCLUDES]->(b);
MATCH (a:Channels {name: 'Channels'}), (b:Distribution_Channels {name: 'Distribution Channels'}) CREATE (a)-[:DESCRIBE]->(b);
MATCH (a:Value_Systems {name: 'Value Systems'}), (b:Scope_of_Offerings {name: 'Scope of Offerings'}) CREATE (a)-[:INCLUDES]->(b);
MATCH (a:Market_Space {name: 'Market Space'}), (b:Market_Space_Attributes {name: 'Market Space Attributes'}) CREATE (a)-[:IS_CHARACTERIZED_BY]->(b);
MATCH (a:Value_Systems {name: 'Value Systems'}), (b:Supplier_Structure {name: 'Supplier Structure'}) CREATE (a)-[:INCLUDES]->(b);
MATCH (a:External_Factors {name: 'External Factors'}), (b:Market_Space {name: 'Market Space'}) CREATE (a)-[:ARE_LINKED_TO]->(b);
MATCH (a:Market_Participation {name: 'Market Participation'}), (b:Competitors {name: 'Competitors'}) CREATE (a)-[:INDICATES]->(b);
MATCH (a:Size {name: 'Size'}), (b:Trend_Based_Projection {name: 'Trend-Based Projection'}) CREATE (a)-[:IS_REPRESENTED_AS]->(b);
MATCH (a:Customer {name: 'Customer'}), (b:End_User {name: 'End User'}) CREATE (a)-[:IS_DISTINCT_FROM]->(b);
MATCH (a:Competitor_Clusters {name: 'Competitor Clusters'}), (b:Competitors {name: 'Competitors'}) CREATE (a)-[:GROUP]->(b);
MATCH (a:Opportunities {name: 'Opportunities'}), (b:Market_Space {name: 'Market Space'}) CREATE (a)-[:ARE_LINKED_TO]->(b);
MATCH (a:Attractiveness {name: 'Attractiveness'}), (b:Porters_Five_Forces {name: 'Porter\'s Five Forces'}) CREATE (a)-[:IS_INFLUENCED_BY]->(b);
MATCH (a:Competitors {name: 'Competitors'}), (b:Competitor_Entities {name: 'Competitor Entities'}) CREATE (a)-[:ARE_REPRESENTED_AS]->(b);
MATCH (a:Size {name: 'Size'}), (b:Time_Series_Data {name: 'Time-Series Data'}) CREATE (a)-[:IS_REPRESENTED_AS]->(b);
MATCH (a:PESTEL_Analysis {name: 'PESTEL Analysis'}), (b:External_Factors {name: 'External Factors'}) CREATE (a)-[:IS_A_FRAMEWORK_FOR]->(b);
MATCH (a:Threats {name: 'Threats'}), (b:Market_Space {name: 'Market Space'}) CREATE (a)-[:ARE_LINKED_TO]->(b);
MATCH (a:Opportunity_Quantification {name: 'Opportunity Quantification'}), (b:Market_Space {name: 'Market Space'}) CREATE (a)-[:IS_LINKED_TO]->(b);
MATCH (a:Threat_Quantification {name: 'Threat Quantification'}), (b:Market_Space {name: 'Market Space'}) CREATE (a)-[:IS_LINKED_TO]->(b);
MATCH (a:Customers_Needs {name: 'Customers\' Needs'}), (b:Jobs_to_Be_Done {name: 'Jobs to Be Done'}) CREATE (a)-[:ARE_LINKED_TO]->(b);
MATCH (a:Value_Systems {name: 'Value Systems'}), (b:Regulatory_Constraints {name: 'Regulatory Constraints'}) CREATE (a)-[:INCLUDES]->(b);
MATCH (a:Market_Space_Attributes {name: 'Market Space Attributes'}), (b:Attractiveness {name: 'Attractiveness'}) CREATE (a)-[:INCLUDES]->(b);
MATCH (a:Role_Qualifiers {name: 'Role Qualifiers'}), (b:Competitors {name: 'Competitors'}) CREATE (a)-[:DESCRIBE]->(b);
MATCH (a:Distinctive_Choices {name: 'Distinctive Choices'}), (b:Market_Space {name: 'Market Space'}) CREATE (a)-[:DEFINE]->(b);
MATCH (a:Value_Systems {name: 'Value Systems'}), (b:Buyer_Structure {name: 'Buyer Structure'}) CREATE (a)-[:INCLUDES]->(b);
MATCH (a:Value_Systems {name: 'Value Systems'}), (b:Industry_Classification {name: 'Industry Classification'}) CREATE (a)-[:INCLUDES]->(b);
MATCH (a:Product_Service_Category {name: 'Product/Service Category'}), (b:Value_Systems {name: 'Value Systems'}) CREATE (a)-[:IS_ASSOCIATED_WITH]->(b);
MATCH (a:Companys_Competitors {name: 'Company\'s Competitors'}), (b:Market_Space {name: 'Market Space'}) CREATE (a)-[:COMPETE_IN]->(b);
