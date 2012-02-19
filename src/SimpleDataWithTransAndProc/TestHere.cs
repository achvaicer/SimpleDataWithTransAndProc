using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NUnit.Framework;
using SharpTestsEx;
using Simple.Data;

namespace SimpleDataWithTransAndProc
{
    [TestFixture]
    public class TestHere
    {
        [TearDown]
        public void DeleteData()
        {
            var db = Database.Open();
            db.DeleteStoredProcedure();
        }

        [Test]
        public void TestRollBack()
        {
            var value = DateTime.Now.ToString("yyyyMMddhhmmss");
            var trans = Database.Open().BeginTransaction();
            trans.InsertStoredProcedure(ValueA: value, ValueB: value);
            trans.Rollback();

            var db = Database.Open();
            var a = db.TableOne.FindBy(ColumnA: value);
            var b = db.TableTwo.FindBy(ColumnB: value);
            var c = db.TableOne.FindBy(ColumnA: "a");

            a.Should().Be.Null();
            b.Should().Be.Null();
        }


    }
}
