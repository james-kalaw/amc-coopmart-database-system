-- Removes every AMC CoopMart table, children first, so you can start over.
-- Safe to run when some tables do not exist yet (errors are ignored).
BEGIN
  FOR t IN (SELECT column_value AS name FROM TABLE(sys.odcivarchar2list(
    'CRM_SUPPORT_TICKET',
    'SHIPMENT_TRACKING',
    'PAYMENT_RECORD',
    'ORDER_ITEM',
    'COOP_DIVIDEND_PAYOUT',
    'SHARE_CAPITAL_TRANSACTION',
    'SHARE_CAPITAL_ACCOUNT',
    'VOTE_CAST',
    'PRODUCT_SUGGESTION',
    'SHOP_ORDER',
    'MEMBERSHIP_SUBSCRIPTION',
    'PRODUCT_SUPPLIER',
    'CAMPAIGN_PLATFORM_PERFORMANCE',
    'MEMBER',
    'VOTING_EVENT',
    'COURIER_PARTNER',
    'SUPPLIER',
    'PRODUCT',
    'MARKETING_CAMPAIGN',
    'ACQUISITION_PLATFORM',
    'MEMBERSHIP_TIER'
  ))) LOOP
    BEGIN
      EXECUTE IMMEDIATE 'DROP TABLE ' || t.name || ' CASCADE CONSTRAINTS PURGE';
    EXCEPTION WHEN OTHERS THEN NULL;
    END;
  END LOOP;
END;
/
